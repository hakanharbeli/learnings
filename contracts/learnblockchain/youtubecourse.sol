pragma solidity ^0.8.0;
//SPDX-License-Identifier: Unlicensed

contract SolidtZero{

   uint public FavoriteNumber;

    //hakan'ı function gibi tanımladık çağırdığımızda içindeki değerler listelendi
    // fakat her yeni person için bunu satır satır kopyalamak saçma 
    // bu sebeple array kullanırız
   //People public hakan = People({FavoriteNumber:2, Name:"Hakan"});

   //struct class yapısı gibi bir yapıdır. 
   struct Kisiler{
       uint256 FavoriteNumber;
       string Name;
   }
    //sürekli people olarak kopyalamak yerine array oluşturduk fakat bu arrayliste push etmek için
    //function tanımlamalıyız
    //Kisiler array'ı struct olarak tanımlanmış olmalı
    Kisiler[] public kisiler;

    function AddKisiler(string memory _name, uint256 _FavoriteNumber) public {
        kisiler.push(Kisiler(_FavoriteNumber,_name));
    }

   function store(uint256 _FavoriteNumber) public {
       FavoriteNumber= _FavoriteNumber;
   }
}