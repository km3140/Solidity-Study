// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;


contract Father{
  event FatherName(string name);
  function who() public virtual{
    emit FatherName("KimJungEun");
  }
}

contract Mother{
  event MotherName(string name);
  function who() public virtual{
    emit MotherName("LeeSolJu");
  }
}
//                      đ ė¤ëŗĩ ė super.who()ë ë¤ė ëė¤ë ėŊí¸ëí¸ëĄ ę˛°ė ë¨ (ëŽė´ė?)
contract Son is Father, Mother{
  event SonName(string name);
  function who() public override(Father,Mother){
    super.who(); // đ MotherName
  }
}
//                      đ 
contract Son2 is Mother, Father{
  event SonName(string name);
  function who() public override(Father,Mother){
    super.who(); // đ FatherName
  }
}
