// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

abstract contract Vehicle{
    function start() public virtual returns(string memory);

    function fuelType() public pure returns(string memory){
        return "Fuel or Diesel";
    }
}

contract Car is Vehicle{
    function start() public pure override returns(string memory){
        return "Car Started";
    }
}