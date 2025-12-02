// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Modifiers {
    // Modifiers => Function filters
    address public owner = msg.sender;
    string public message = "Welcome User!";

    // modifier
    modifier onlyOwner(){
        require(msg.sender == owner, "Access Denied");
        _;
    }

    function updateMessage(string memory newMessage) public onlyOwner {
        message = newMessage;
    }

    function readMessage() public view returns (string memory){
        return message;
    }

}