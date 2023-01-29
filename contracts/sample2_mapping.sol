pragma solidity ^0.8.0;
//SPDX-License-Identifier: Unlicensed

contract Mapper{
    //mappinglerimizi tanımlıyoruz. 
    //registered değerini adress tipi değeriyle bool olarak mapliyoruz.
    //yani registered değişkeni içinde bir adress gönderilirse bool olarak dönüş alıyoruz
    // Mapping içerisinde key değeri ile sorgulama yapıldığında;
    // eğer key değerine karşılık bir value değeri varsa o değeri döndürür,
    // yoksa value tipi neyse o tipin default yani varsayılan değerini döndürür.
    mapping (address => bool ) public registered;
    
    mapping (address => int256 ) public favNums;

    function isRegistered()public view returns(bool){
        return registered[msg.sender];  
    }

    function register(int256 _favNum)public{
        require(!isRegistered(),"Kullanici kaydiniz daha once yapildi.");
        registered[msg.sender]==true;
        favNums[msg.sender]=_favNum;
    }

}