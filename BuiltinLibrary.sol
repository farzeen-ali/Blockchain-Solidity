// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/access/Ownable.sol";

contract ProductStore is Ownable {
    uint public productPrice;

    constructor() Ownable(msg.sender) {}

    function setPrice(uint _price) public onlyOwner{
        productPrice = _price;
    }

    function getPrice() public view returns(uint){
        return productPrice;
    }
}