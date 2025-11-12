// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Functions {
    // Without param, without return
    function sayHello() public pure {

    }
    // without param, with return
    function getMessage() public pure returns(string memory){
        return "Hello Farzeen";
    }
    // with param, no return
    function storeValues(uint _x, uint _y) public pure {
        uint sum = _x + _y;
    }
    // with param, with return
    function addNumbers(uint _a, uint _b) public pure returns(uint){
        return _a + _b;
    }
    // View Function
    uint public number = 10;
    function getNumber() public view returns(uint){
        return number;
    }
    // Pure Functions
    function multiply(uint _a, uint _b) public pure returns(uint){
        return _a * _b;
    }
    // State Changing Functions
    function setNumber(uint _num) public {
        number = _num;
    }
    // Internal Functions
    function double(uint _a) internal pure returns(uint){
        return _a * 2;
    }

    function getDoubleValue(uint _x) public pure returns (uint){
        return double(_x);
    }
    // External Functions
    function externalFunc() external pure returns(string memory){
        return "This is external Func";
    }
}
