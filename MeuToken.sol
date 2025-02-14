// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract MeuToken is ERC20, ReentrancyGuard {

    constructor(uint256 initialSupply) ERC20("OutroToken", "OTK"){
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }

}