// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

interface ICounter {
    function getCount() external view returns(uint);
    function increment() external;
}

contract Counter is ICounter{
    uint public count;
    function getCount() external view override returns(uint){
        return count;
    }
    function increment() external override {
        count += 1;
    }
}

contract CounterCaller {
    function callGetCount(address _counterAddress) external view returns (uint){
        return ICounter(_counterAddress).getCount();
    }
    function callIncrement(address _counterAddress) external{
        ICounter(_counterAddress).increment();
    }
}