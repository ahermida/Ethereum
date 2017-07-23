pragma solidity ^0.4.8;

//'Minimum Viable Token' basically ripped straight from ethereum.org/token
contract HelloCoin {

  //Mapping (basically a hashmap of addresses to values)
  mapping (address => uint256) public balances;

  //Name of the token
  string public name;

  //Symbol for the token
  string public symbol;

  //How many decimals we want to display
  uint8 public decimals;

  //Basically a function that notifies the 'listeners' (has to be capital T)
  event Transfer(address indexed from, address indexed to, uint256 value);

  //Kicks off token contract with data given to it
  function HelloCoin(uint256 _initial, string _tokenName, uint8 _decimals, string _symbol) {

    //Gives the person creating this token all of the supply
    balances[msg.sender] = _initial;

    //Keep track of these public identifiers for the token
    name = _tokenName;
    decimals = _decimals;
    symbol = _symbol;
  }

  //Allow contract senders to send ether
  function transfer(address _to, uint256 _value) {

    //Check if sender has value, then check if there is any overflow
    if (balance[msg.sender] < _value || balance[_to] + _value < _value)
      throw;

    //Exchange values
    balance[msg.sender] -= _value;
    balance[_to] += _value;
    Transfer(msg.sender, _to, _value);
  }


}
