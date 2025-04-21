// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*──────────────────────────────────────────────────────────────────────────────
│ DocKaliCertif ▸ SBT + NFT                                                   │
│------------------------------------------------------------------------------│
│ v2 – compatible OpenZeppelin ≥ 5.0                                           │
│                                                                              │
│ • Registre de hash + auteur + horodatage                                     │
│ • AuthorBadge  (SBT) : ERC‑721 non‑transférable, 1 par auteur                │
│ • CertToken    (NFT) : ERC‑721 + tokenURI, minté à chaque certification     │
└──────────────────────────────────────────────────────────────────────────────*/

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/*//////////////////////////////////////////////////////////////////////////
                               SBT de l’auteur
//////////////////////////////////////////////////////////////////////////*/
contract AuthorBadge is ERC721, Ownable {
    uint256 private _counter;
    mapping(address => bool) public hasBadge;

    constructor(address initialOwner)
        ERC721("DocKali Author Badge", "DKAB")
        Ownable(initialOwner)
    {}

    /// @dev Mint interne, appelé par le registre
    function mint(address to) external onlyOwner returns (uint256) {
        require(!hasBadge[to], "Badge already minted");
        _counter++;
        uint256 id = _counter;
        _safeMint(to, id);
        hasBadge[to] = true;
        return id;
    }

    /// @dev Soulbound : seuls mint (from == 0) ou burn (to == 0) sont autorisés
    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal override returns (address from) {
        address previousOwner = _ownerOf(tokenId);
        require(
            previousOwner == address(0) || to == address(0),
            "Soulbound: non-transferable"
        );
        from = super._update(to, tokenId, auth);
    }
}

/*//////////////////////////////////////////////////////////////////////////
                         NFT ERC‑721 du certificat
//////////////////////////////////////////////////////////////////////////*/
contract CertToken is ERC721URIStorage, Ownable {
    uint256 private _counter;

    constructor(address initialOwner)
        ERC721("DocKali Certificate", "DKAC")
        Ownable(initialOwner)
    {}

    function mint(
        address to,
        string calldata uri
    ) external onlyOwner returns (uint256) {
        _counter++;
        uint256 id = _counter;
        _safeMint(to, id);
        _setTokenURI(id, uri);
        return id;
    }
}

/*//////////////////////////////////////////////////////////////////////////
                    Registre principal + logique de proof
//////////////////////////////////////////////////////////////////////////*/
contract DocKaliCertif is Ownable {
    struct Document {
        bytes32  hash;
        address  author;
        uint256  timestamp;
        uint256  certTokenId;
        string   authorName;
    }

    mapping(bytes32 => Document) private _documents;

    AuthorBadge public immutable badge;
    CertToken   public immutable cert;

    event DocumentCertified(
        bytes32 indexed hash,
        address indexed author,
        uint256 certTokenId
    );
    event DocumentRevoked(bytes32 indexed hash);

    constructor() Ownable(msg.sender) {
        badge = new AuthorBadge(address(this));
        cert  = new CertToken(address(this));
    }

    /// @notice Certifie un document et émet un NFT + SBT
    function certifyDocument(
        bytes32 hash,
        string calldata authorName,
        string calldata tokenURI
    ) external {
        require(_documents[hash].timestamp == 0, "Already certified");

        // 1. SBT
        if (!badge.hasBadge(msg.sender)) {
            badge.mint(msg.sender);
        }

        // 2. NFT certificat
        uint256 certId = cert.mint(msg.sender, tokenURI);

        // 3. Stockage
        _documents[hash] = Document({
            hash:        hash,
            author:      msg.sender,
            timestamp:   block.timestamp,
            certTokenId: certId,
            authorName:  authorName
        });

        emit DocumentCertified(hash, msg.sender, certId);
    }

    /// @notice Vérifie un document
    function verifyDocument(
        bytes32 hash
    ) external view returns (Document memory doc, bool exists) {
        doc = _documents[hash];
        exists = (doc.timestamp != 0);
    }

    /// @notice Révocation (admin)
    function revokeDocument(bytes32 hash) external onlyOwner {
        require(_documents[hash].timestamp != 0, "Doc inexistant");
        delete _documents[hash];
        emit DocumentRevoked(hash);
    }
}
