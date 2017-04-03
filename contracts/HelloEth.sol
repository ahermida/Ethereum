pragma solidity ^0.4.8;

contract HelloEth {
  uint public balance;

  //call constructor
  function HelloEth() {
    balance = 1000;
  }

  //adds to balance
  function deposit(uint _value) returns (uint _newBalance) {
    balance += _value;
    return balance;
  }
}
