// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract A{

  string public name;
  uint256 public age;
                                            // ๐ 0.7 ๋ถํฐ public ์ ๋ถ์ด๋ ๋จ
  constructor(string memory _name, uint256 _age){ // ๐ ์ฝํธ๋ํธ๊ฐ ์ต์ด ์์ฑ๋  ๋ ํ ๋ฒ ์คํ (JS์ ๋น์ท)
    name = _name;
    age = _age;
  }
  function change(string memory _name, uint256 _age) public{
    name = _name;
    age = _age;
  }
}

contract B{

  A instance = new A("Kim",33); // ๐ constructor์ ์ธ์ ์ ๋ฌ

  function change(string memory _name, uint256 _age) public{
    instance.change(_name, _age);
  }
  function get() public view returns(string memory, uint256){
    return (instance.name(), instance.age());
  }
}