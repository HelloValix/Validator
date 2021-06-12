// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "../token/ERC20/ERC20Burnable.sol";

/**
 * @title Valixorg
 * @dev Implementation of the Valixorg
 *
 * @dev {ERC20} token, including:
 *
 *  - Preminted initial supply
 *  - Ability for holders to burn (destroy) their tokens
 *  - No access control mechanism (for minting/pausing) and hence no governance
 *  - A different path will be followed for governance.
 *
 * This contract uses {ERC20Burnable} to include burn capabilities - head to
 * its documentation for details.
 */
contract Valix is ERC20Burnable {
    /**
     * @dev Mints `initialSupply` amount of token and transfers them to `owner`.
     *
     * See {ERC20-constructor}.
     */
    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply,
        address owner
    ) ERC20(name, symbol) {
        _mint(owner, initialSupply);
    }
}
