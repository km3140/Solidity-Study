// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract InitialValue{
  uint256 public amount;  // ๐ 0
  string public str;      // ๐ ""
  bool public boo;        // ๐ false
  address public addr;    // ๐ 0x0000000000000000000000000000000000000000
}
// solidity์์๋ null์ด๋ undefine๊ณผ ๊ฐ์ ๊ฐ๋์ด ์๋ค!
// ๋ชจ๋  ๋ณ์๋ ๊ฐ์ด ํ ๋น๋์ด ์๋ ์ํ!


//+ 
contract defaultAccess{
  uint256 amount;  // ๐ ์ ๊ทผ ์ ํ์๋ฅผ ์๋ตํ๋ฉด ๊ธฐ๋ณธ๊ฐ์ internal!
}