// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Events {
    // event declare
    event NewNumberSet(address sender, uint oldNumber, uint newNumber);

    uint public number = 10;

    function setNumber(uint _newNumber) public{
        uint old = number;
        number = _newNumber;

        emit NewNumberSet(msg.sender, old, number);
    }

    event JustMessage(string message);

    function sendMessage() public{
        emit JustMessage("Hello From Farzeen");
    }

}