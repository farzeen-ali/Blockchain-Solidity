// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract EtherHandling {
    // Payable => recieve Ether
    // call => send ether

    function deposit() public payable {

    }

    // check balance contract
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    // send ether
    function sendEther(address payable _to) public payable returns(bool){
        (bool success, ) = _to.call{value: msg.value}("");
        return success;
    }
}