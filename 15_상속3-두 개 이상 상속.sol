// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract Father{
  uint256 public fatherMoney = 100;
  function getFatherName() public pure returns(string memory){
    return "KimIll";
  }                              // ๐ ์ค๋ณต๋ ํจ์
  function getMoney() public view virtual returns(uint256){
    return fatherMoney;
  }
}

contract Mother{
  uint256 public motherMoney = 500;
  function getMotherName() public pure returns(string memory){
    return "Leesol";
  }                              // ๐ ์ค๋ณต๋ ํจ์
  function getMoney() public view virtual returns(uint256){
    return motherMoney;
  }
}

// contract Son is Father,Mother{

// }
//    ๐ ์ ์ํ๋ก๋ ์๋ฌ๊ฐ ๋จ, Father์ Mother๊ฐ ๊ฒน์น๋ ํจ์๊ฐ ์๊ธฐ ๋๋ฌธ์ override๋ก ์๋ฌ๋ฅผ ํด๊ฒฐํด์ค์ผํ๋ค

contract Son is Father,Mother{            // ๐ ๊ฒน์น contract๋ค์ ์ธ์๋ก ๋ฃ์ด์ค
  function getMoney() public view override(Father,Mother) returns(uint256){
    return motherMoney + fatherMoney; // ๐ 600
  }
}