// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC1155} from "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract GameItems is ERC1155, Ownable {
    uint256 public constant GOLD = 1;
    uint256 public constant SWORD = 2; 

    constructor() ERC1155("https://game.example/item/{id}.json")
    Ownable(msg.sender){
        _mint(msg.sender, GOLD, 1000, "");
        _mint(msg.sender, SWORD, 1, "");
    }
    function mintItem(
        address to,
        uint256 id,
        uint256 amount
    ) public onlyOwner{
        _mint(to, id, amount, "");
    }

}