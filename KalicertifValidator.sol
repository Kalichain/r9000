// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title KalicertifValidator (v3)
 * @notice NFC‑tap validator that supports **DER‑encoded** ECDSA/Keccak‑256
 *         signatures exactly as produced by the `nfcdev` server (see docs).
 *         ‑ Message = keccak256(uid || le(readCounter) || tamperStatus)
 *         ‑ Signature = ASN.1‑DER encoded (r,s)
 *         The contract recovers the signer by trying both recovery ids (27,28),
 *         after parsing DER and enforcing canonical `s`.
 */
contract KalicertifValidator is Ownable {
    /// -----------------------------------------------------------------------
    /// Constants
    /// -----------------------------------------------------------------------

    // Half‑order of the secp256k1 curve to enforce canonical s‑values.
    uint256 private constant SECP256K1_N_DIV_2 =
        0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0;

    /// -----------------------------------------------------------------------
    /// Storage
    /// -----------------------------------------------------------------------

    /// @notice Current trusted signer key (rotatable by the contract owner).
    address public publicKey;

    /// @notice Timestamp of the last successful verification.
    uint256 public lastVerifiedTimestamp;

    struct VerificationData {
        bytes uid;
        uint32 readCounter;
        bytes2 tamperStatus;
        address recoveredAddress;
        bool isValid;
    }

    VerificationData public lastVerifiedData;

    /// @dev Protect exact payload replay.
    mapping(bytes32 => bool) private signedMessages;

    /// @dev Ensure each UID is accepted only once.
    mapping(bytes32 => bool) private verifiedUIDs;

    /// -----------------------------------------------------------------------
    /// Events
    /// -----------------------------------------------------------------------

    event PublicKeySet(address indexed publicKey);
    event SignatureVerified(
        bytes32 indexed uidHash,
        bytes uid,
        uint32 readCounter,
        bytes2 tamperStatus,
        address indexed recoveredAddress,
        bool isValid
    );

    /// -----------------------------------------------------------------------
    /// Constructor & admin
    /// -----------------------------------------------------------------------

    constructor(address _publicKey) {
        require(_publicKey != address(0), "Invalid public key");
        publicKey = _publicKey;
        emit PublicKeySet(_publicKey);
    }

    /**
     * @notice Rotate the signer key (onlyOwner).
     */
    function updatePublicKey(address _newKey) external onlyOwner {
        require(_newKey != address(0), "Invalid new key");
        publicKey = _newKey;
        emit PublicKeySet(_newKey);
    }

    /// -----------------------------------------------------------------------
    /// Verification logic
    /// -----------------------------------------------------------------------

    /**
     * @dev Verifies an NTAG signature as produced by `nfcdev`.
     * @param uid           NFC tag UID (raw bytes, 7 or 10 bytes).
     * @param readCounter   Little‑endian read counter.
     * @param tamperStatus  2‑byte tamper field.
     * @param derSignature  ASN.1‑DER encoded (r,s) signature.
     *
     * The function parses (r,s) from DER, enforces s canonical, and
     * recovers the address with both recovery ids (27,28).
     */
    function verifyTapSignature(
        bytes calldata uid,
        uint32 readCounter,
        bytes2 tamperStatus,
        bytes calldata derSignature
    ) external returns (bool) {
        // Build message hash (no Ethereum prefix!)
        bytes memory payload = abi.encodePacked(uid, _uint32ToLittleEndian(readCounter), tamperStatus);
        bytes32 messageHash = keccak256(payload);

        // Replay protection
        require(!signedMessages[messageHash], "Message already verified");
        bytes32 uidHash = keccak256(uid);
        require(!verifiedUIDs[uidHash], "UID already verified");

        // Parse DER → (r,s)
        (bytes32 r, bytes32 s) = _parseDERSignature(derSignature);
        require(uint256(s) <= SECP256K1_N_DIV_2, "Non‑canonical s");

        // Try both possible recovery ids
        address rec1 = ecrecover(messageHash, 27, r, s);
        address rec2 = ecrecover(messageHash, 28, r, s);
        bool valid;
        address recovered;
        if (rec1 == publicKey) {
            valid = true;
            recovered = rec1;
        } else if (rec2 == publicKey) {
            valid = true;
            recovered = rec2;
        }

        emit SignatureVerified(uidHash, uid, readCounter, tamperStatus, recovered, valid);

        if (valid) {
            signedMessages[messageHash] = true;
            verifiedUIDs[uidHash] = true;
            lastVerifiedData = VerificationData(uid, readCounter, tamperStatus, recovered, true);
            lastVerifiedTimestamp = block.timestamp;
        }

        return valid;
    }

    /// -----------------------------------------------------------------------
    /// Public helpers
    /// -----------------------------------------------------------------------

    function getLastVerifiedData() external view returns (
        bytes memory uid,
        uint32 readCounter,
        bytes2 tamperStatus,
        address recoveredAddress,
        bool isValid,
        uint256 timestamp
    ) {
        VerificationData memory d = lastVerifiedData;
        return (d.uid, d.readCounter, d.tamperStatus, d.recoveredAddress, d.isValid, lastVerifiedTimestamp);
    }

    /// -----------------------------------------------------------------------
    /// Internal utils
    /// -----------------------------------------------------------------------

    /**
     * @dev Convert uint32 to little‑endian bytes4.
     */
    function _uint32ToLittleEndian(uint32 value) private pure returns (bytes4 out) {
        out = bytes4(
            uint32(uint8(value)) |
            (uint32(uint8(value >> 8)) << 8) |
            (uint32(uint8(value >> 16)) << 16) |
            (uint32(uint8(value >> 24)) << 24)
        );
    }

    /**
     * @dev Parse ASN.1‑DER encoded ECDSA signature.
     * Supports lengths 70‑72 bytes.
     */
    function _parseDERSignature(bytes calldata sig) private pure returns (bytes32 r, bytes32 s) {
        unchecked {
            require(sig.length >= 8 && sig[0] == 0x30, "Bad DER");
            uint8 totalLen = uint8(sig[1]);
            require(totalLen + 2 == sig.length, "Bad DER len");

            uint8 rLen;
            uint8 sLen;
            uint8 offset = 2;

            require(sig[offset] == 0x02, "Bad R tag");
            offset++;
            rLen = uint8(sig[offset]);
            offset++;
            require(rLen > 0 && rLen <= 33, "Bad R len");
            uint8 rPad = rLen == 33 ? 1 : 0; // leading 0x00 if present
            uint8 rStart = offset + rPad;
            // copy r into 32‑byte word
            assembly {
                r := mload(add(add(sig.offset, 0x20), rStart))
            }
            if (rLen < 32) {
                r = r >> ((32 - rLen) * 8);
            }
            offset += rLen;

            require(sig[offset] == 0x02, "Bad S tag");
            offset++;
            sLen = uint8(sig[offset]);
            offset++;
            require(sLen > 0 && sLen <= 33, "Bad S len");
            uint8 sPad = sLen == 33 ? 1 : 0;
            uint8 sStart = offset + sPad;
            assembly {
                s := mload(add(add(sig.offset, 0x20), sStart))
            }
            if (sLen < 32) {
                s = s >> ((32 - sLen) * 8);
            }
        }
    }
}
