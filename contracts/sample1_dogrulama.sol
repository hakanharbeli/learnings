pragma solidity ^0.8.0;
//SPDX-License-Identifier: Unlicensed

contract Dogrulama{

    //bir değişken constant ya da immutable olarak işaretlenirse bu değişken bir daha değiştirlemez.
    uint public constant karsilama =5;
    //fonksiyon tanımladık önce fonksiyon adı, public-private görünürlük , pure= blockchain'e gönderme,
    //returns = döndürülecek değer tipi
    function dogrula(uint number) public pure returns(string memory sonuc){
        
        if(karsilama == number){

            sonuc="Dogrulandi...";
        }else if(karsilama != number){

            sonuc="Dogrulanmadi!!";
        }
        return sonuc;
    }

}