// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract Father{
  string public familyName = "Kim";
  string public givenName = "Ill";
  uint256 public money = 100;

  constructor(string memory _givenName) {
    givenName = _givenName;
  }

  function getFamilyName() public view returns(string memory){
    return familyName;
  }
  function getGivenName() view public returns(string memory){
    return givenName;
  }                             // ๐ ๋ฎ์ด์ฐ๊ธฐ ๋นํ  ํจ์์ virtual
  function getMoney() view public virtual returns(uint256){
    return money;
  }
}

contract Son is Father("Jung"){

  uint256 public earning = 100;
                               // ๐ ๋ฎ์ด ์ธ ํจ์์ override ํค์๋
  function getMoney() view public override returns(uint256){
    return  money + earning; // ๐ 200
  }

}


// virtual์ override