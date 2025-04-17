// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts@4.9.6/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.6/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts@4.9.6/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts@4.9.6/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts@4.9.6/security/Pausable.sol";
import "@openzeppelin/contracts@4.9.6/access/Ownable.sol";

/**
 * @title Wrapped Native Kalis (wKalis)
 * @notice Version “WETH” pour le coin natif Kalis. 1 wKalis = 1 KLS natif conservé.
 *
 *  ▸ Dépôt : `deposit()` / `depositFor(to)` ou envoi direct → frappe wKalis.
 *  ▸ Retrait : `withdraw(amount)` / `withdrawTo(to, amount)` → brûle, renvoie KLS.
 *  ▸ Analytics : `totalDeposits()` & `totalWithdrawals()` pour la transparence.
 *  ▸ ERC20Permit : approvals sans gaz.
 *  ▸ Pause d’urgence + rescue de tokens tiers.
 */
contract WrappedKalis is ERC20, ERC20Permit, ReentrancyGuard, Pausable, Ownable {
    using SafeERC20 for IERC20;

    /* -------------------------------------------------------------------------- */
    /*                                   Storage                                   */
    /* -------------------------------------------------------------------------- */

    uint256 private _totalDeposits;
    uint256 private _totalWithdrawals;

    /* -------------------------------------------------------------------------- */
    /*                                     Events                                  */
    /* -------------------------------------------------------------------------- */

    event Deposit(address indexed from, address indexed to, uint256 amount);
    event Withdraw(address indexed from, address indexed to, uint256 amount);
    event Rescue(address indexed token, address indexed to, uint256 amount);

    /* -------------------------------------------------------------------------- */
    /*                                   Constructor                               */
    /* -------------------------------------------------------------------------- */

    /**
     * @param _timelock  Adresse du TimelockController (propriétaire pour pause/rescue).
     */
    constructor(address _timelock)
        ERC20("Wrapped Kalis", "wKalis")
        ERC20Permit("wKalis")
    {
        require(_timelock != address(0), "Timelock zero");
        _transferOwnership(_timelock);
    }

    function decimals() public pure override returns (uint8) { return 18; }

    /* -------------------------------------------------------------------------- */
    /*                                    Deposit                                  */
    /* -------------------------------------------------------------------------- */

    /** @notice Dépôt pour soi‑même. */
    function deposit() public payable nonReentrant whenNotPaused {
        _deposit(msg.sender);
    }

    /** @notice Dépôt pour une autre adresse (airdrop/reward). */
    function depositFor(address to) public payable nonReentrant whenNotPaused {
        require(to != address(0), "Zero addr");
        _deposit(to);
    }

    /** @dev Interne : enregistre le dépôt et frappe. */
    function _deposit(address to) internal {
        uint256 amount = msg.value;
        require(amount > 0, "Value zero");
        _mint(to, amount);
        _totalDeposits += amount;
        emit Deposit(msg.sender, to, amount);
    }

    /** @dev Fallback payable → dépôt pour sender. */
    receive() external payable { _deposit(msg.sender); }

    /* -------------------------------------------------------------------------- */
    /*                                    Withdraw                                 */
    /* -------------------------------------------------------------------------- */

    function withdraw(uint256 amount) external nonReentrant whenNotPaused {
        _withdraw(msg.sender, msg.sender, amount);
    }

    function withdrawTo(address to, uint256 amount) external nonReentrant whenNotPaused {
        require(to != address(0), "Zero addr");
        _withdraw(msg.sender, to, amount);
    }

    function _withdraw(address from, address to, uint256 amount) internal {
        require(amount > 0, "Amount zero");
        _burn(from, amount);
        _sendValue(to, amount);
        _totalWithdrawals += amount;
        emit Withdraw(from, to, amount);
    }

    /* -------------------------------------------------------------------------- */
    /*                              Internal helpers                               */
    /* -------------------------------------------------------------------------- */

    function _sendValue(address to, uint256 amount) internal {
        (bool ok, ) = to.call{value: amount}("");
        require(ok, "Send fail");
    }

    /* -------------------------------------------------------------------------- */
    /*                               Emergency tools                               */
    /* -------------------------------------------------------------------------- */

    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    /** @notice Récupère un token ERC‑20 envoyé par erreur (pas wKalis). */
    function rescueERC20(address token, address to, uint256 amount) external onlyOwner {
        require(token != address(this), "No rescue wKalis");
        require(to != address(0), "Zero addr");
        IERC20(token).safeTransfer(to, amount);
        emit Rescue(token, to, amount);
    }

    /* -------------------------------------------------------------------------- */
    /*                              View functions                                 */
    /* -------------------------------------------------------------------------- */

    /** @return Total brut de KLS déposés depuis la création. */
    function totalDeposits() external view returns (uint256) { return _totalDeposits; }

    /** @return Total brut de KLS retirés depuis la création. */
    function totalWithdrawals() external view returns (uint256) { return _totalWithdrawals; }

    /** @return KLS natifs détenus (doit == totalSupply). */
    function backingReserve() external view returns (uint256) { return address(this).balance; }
}

