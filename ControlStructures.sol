// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract ControlStructures {
    uint public number = 10;
    // If Else
    function checkNumber() public view returns(string memory){
        if(number > 10){
            return "Greater than 10";
        }
        else if(number == 10){
            return "Equal to 10";
        }
        else{
            return "Less than 10";
        }
    }

    // FOR LOOP
    function sumForLoop() public pure returns(uint){
        uint sum = 0;
        for(uint i = 1; i <=5 ; i++){
            sum += i;
        }
        return sum;
    }

    // WHILE LOOP
    function countWhileLoop() public pure returns(uint){
        uint count = 0;
        uint i = 0;

        while(i < 3){
            count++;
            i++;
        }
        return count;
    }

    // DO-WHILE LOOP
    function doWhileLoop() public pure returns(uint){
        uint value = 1;

        do{
            value = value * 2;
        }
        while(value < 8);

        return value;

    }
}