// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract A{

  uint256 public a =5;
  
  function change(uint256 _value) public {
    a = _value;
  }

}

contract B{

  A instanceName = new A(); // ๐ new ํค์๋๋ก A์ ์ธ์คํด์ค(๋ณต์ ๋ณธ)์ธ instanceName์ ๋ง๋ฌ

  function get_A() public view returns(uint256) {
    return instanceName.a(); // ๐ ์ธ์คํด์ค ๋ด์ ์๋ ๋ณ์๊ฐ์ ์ฝ์ ๋ ํจ์์ฒ๋ผ ()๋ฅผ ๋ถ์ด๋ ๊ฒ ๊ฐ๋ค
  }
  function change_A(uint256 _value) public {
    instanceName.change(_value);
  }

}

// A์์์ a์ instanceName.a๋ ๋ค๋ฅธ ๋ณ์๋ค


// ์ธ์คํด์คํ์ ๋จ์  :
// contract B์์ A๋ฅผ ์ธ์คํด์คํ ํ๋ฉด contract B๋ contract A์์ฒด๋ฅผ ๋ณต์ ํด์ ๊ฐ์ ธ์ค๋ ๊ฒ์ด๊ธฐ ๋๋ฌธ์ ๊ฐ์ค๋น๊ฐ ๋ง์ด๋ ๋ค!
// ์ถ๊ฐ๋ก ์ด๋๋ฆฌ์์์๋ ๋ธ๋ก ๋น ๊ฐ์ค์ ์ต๋๊ฐ์ด ์ ํด์ ธ์์ด์ ๊ฐ์ค๋น๊ฐ ๋ธ๋ก์ ์ ํ๋์ ์ด๊ณผํ๋ค๋ฉด Error๊ฐ ๋ฐ์ํ๊ณ  ๋ฐฐํฌ๋ฅผ ์คํจํ๊ฒ ๋๋ค