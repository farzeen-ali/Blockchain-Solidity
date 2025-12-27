// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

library MathLibrary{
    function add(uint a, uint b) internal pure returns(uint){
        return a+b;
    }
    function multiply(uint a, uint b) internal pure returns(uint){
        return a*b;
    }
}

contract Calculator {
    function addNumbers(uint x, uint y) public pure returns(uint){
        return MathLibrary.add(x,y);
    }
    function multiplyNumbers(uint x, uint y) public pure returns(uint){
        return MathLibrary.multiply(x,y);
    }
}