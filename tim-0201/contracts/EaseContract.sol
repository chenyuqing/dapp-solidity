// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract EaseContract {
  string value;
  constructor() {
    value = "Hello World";
  }
  function getValue() public view returns (string memory) {
    return value;
  }
  function setValue(string memory _value) public {
    value = _value;
  }
}
