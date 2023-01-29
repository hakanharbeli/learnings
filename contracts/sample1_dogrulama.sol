pragma solidity ^0.8.0;
//SPDX-License-Identifier: Unlicensed

contract Dogrulama{
    
    //fonksiyon tanımladık önce fonksiyon adı, public-private görünürlük , pure= blockchain'e gönderme,
    //returns = döndürülecek değer tipi
    function dogrula(uint number) public pure returns(string memory sonuc){
        uint karsilama =5;
        if(karsilama == number){

            sonuc="Dogrulandi...";
        }else if(karsilama != number){

            sonuc="Dogrulanmadi!!";
        }
        return sonuc;
    }

}