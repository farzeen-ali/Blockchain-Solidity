// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TechzeenToken is ERC20 {
    constructor() ERC20("Techzeen Token", "TZN"){
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
}