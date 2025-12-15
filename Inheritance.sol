// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Parent {
    string public message = "Hello From Parent";

    function getMessage() public view returns(string memory){
        return message;
    }
}

contract Child is Parent{
    function getParentMessage() public view returns(string memory){
        return message;  
    }
}