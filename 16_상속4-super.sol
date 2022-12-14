// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

// 원래 함수 위에 오버라이드 하고싶을 때!

contract Father{
  event FatherName(string name);
  function who() public virtual{
    emit FatherName("I");
    emit FatherName("M");
    emit FatherName("Your");
    emit FatherName("Father");
    emit FatherName("I");
    emit FatherName("M");
    emit FatherName("Your");
    emit FatherName("Father");
    emit FatherName("I");
    emit FatherName("M");
    emit FatherName("Your");
    emit FatherName("Father");
    emit FatherName("I");
    emit FatherName("M");
    emit FatherName("Your");
    emit FatherName("Father");
  }
}

contract Son is Father{
  event SonName(string name);
  function who() public override{
    super.who(); // 👈 15줄짜리 Father의 who()의 내용 대신 super.who() 들어감
    emit SonName("Jung");
  }
}