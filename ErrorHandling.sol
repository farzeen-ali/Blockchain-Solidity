// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract SimpleWallet{
    uint public myBalance;
    uint public totalDeposited;
    uint public totalWithdrawn;

    function deposit(uint amount) public {
        require(amount > 0, "Amount cannot be zero");

        myBalance = myBalance + amount;
        totalDeposited = totalDeposited + amount;
    }

    function withdraw(uint amount) public {
        if(amount > myBalance){
            revert("Not enough money!");
        }
        myBalance = myBalance - amount;
        totalWithdrawn = totalWithdrawn + amount;
    }

    function verifyAccount() public view{
        assert(myBalance == (totalDeposited - totalWithdrawn));
    }

}