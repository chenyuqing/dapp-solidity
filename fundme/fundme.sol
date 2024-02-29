// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FundMe {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function fund() payable public {
        // msg.sender是调用合约的人
        // msg.value是调用合约的人发送的以太币
        // address(this)是合约的地址
        // address(this).balance是合约的余额
        // address(this).balance += msg.value;
        // address(this).balance = address(this).balance + msg.value;
        
        // require(msg.value > 1 ether, "must greater than 1 ether!");
        require(msg.value > 1e18, "must greater than 1 ether!");

    }

    function getbalance(address _address) public view returns(uint) {
        return _address.balance;
    }
}