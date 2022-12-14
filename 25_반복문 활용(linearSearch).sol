// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract LinearSearch{
  event CountryIndexName(uint256 indexed _index, string _name);
  string[] private countryList = ['south korea','north korea', 'usa', 'china', 'japan'];

  function linearSearch(string memory _search) public view returns(uint256, string memory){
    for(uint i; i < countryList.length ; i++){
      if(keccak256(bytes(_search)) == keccak256(bytes(countryList[i]))){ // ๐ ์๋ฆฌ๋ํฐ์์๋ ๋ค๋ฅธ ์ธ์ด๋ค ์ฒ๋ผ string์ ๋น๊ตํ์ง ๋ชปํจ
        return (i,countryList[i]);                                       //     ๊ฐ string์ byteํ ํ ํด์ ํด ์ค ๋ค์ ๋น๊ตํด์ผ ํจ
      }
    }
    return(0,'Not Found');
  }

}
