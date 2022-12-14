// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract IfForWhileDowhile{
  // 1.์กฐ๊ฑด๋ฌธ
    function isEven(uint a) public pure returns(bool){
      if (a % 2 == 0) {
        // ๐ ์กฐ๊ฑด
        return true; // ๋๋จธ์ง๊ฐ 0 (์ง์)๋ฉด ์คํ
      }else if(a == 99){
        return true; //a=99๋ฉด ์คํ
      } else{
        return false;// ์ง์๋ ์๋๊ณ  99๋ ์๋๋ฉด ์คํ
      }
    }

  // 2.๋ฐ๋ณต๋ฌธ
    function forSum(uint maxNum) public pure returns(uint){
      uint _sum = 0;
      for (uint i = 0 ; i <= maxNum ; i++){
        // ๐ (i๋ฅผ uint๋ก ์ ์ธ ; i๊ฐ maxNum ์ดํ์ด๋ฉด ์คํ ; ๋งค ์คํ ๋์ i์ +1)
        _sum += i;
      }
      return _sum; // 0 + 1 + 2 + ... + maxNum-1 + maxNum
    }

    function whileSum(uint maxNum) public pure returns(uint){
      uint _sum = 0;
      uint i = 0;
      while( i <= maxNum){
        _sum += i; // ๐ ์กฐ๊ฑด์ ๋ง์ผ๋ฉด ๊ณ์ ๋ฐ๋ณต
        i++;
      }
      return _sum;
    }

    function doWhileSum(uint maxNum) public pure returns(uint){
      uint _sum = 0;
      uint i = 0;
      do{
        _sum += i;  // ๐ ์กฐ๊ฑด ํ์ธ ์ ์ ํจ์ ๋ชธ์ฒด ํ ๋ฒ ์คํ
        i++;        //
      }while( i <= maxNum);
      return _sum;
    }

    // ์กฐ๊ฑด๋ฌธ์ ๋ชจ๋  ํจ์๋ ๋๊ฐ์ ๊ฒฐ๊ณผ๊ฐ ๋์จ๋ค
}