// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v5.0.1/contracts/token/ERC20/ERC20.sol";
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v5.0.1/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v5.0.1/contracts/access/Ownable.sol";
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v5.0.1/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract TaurusStable is ERC20,ERC20Burnable, Ownable, ERC20Permit {
    constructor()
        ERC20("TaurusStable", "TUST")
        Ownable(msg.sender)
        ERC20Permit("TaurusStable")
    {
        _mint(msg.sender, 10000000 * 10 ** decimals());
    }
}