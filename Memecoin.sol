// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.5.0
pragma solidity ^0.8.31;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract TaurusStable is ERC20,ERC20Burnable, Ownable, ERC20Permit {
    constructor()
        ERC20("TaurusStable", "TUST")
        Ownable(msg.sender)
        ERC20Permit("TaurusStable")
    {
        _mint(msg.sender, 10000000 * 10 ** decimals());
    }
}