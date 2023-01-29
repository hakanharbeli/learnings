pragma solidity ^0.8.0;
//SPDX-License-Identifier: Unlicensed

contract Mapper{
    //mappinglerimizi tanımlıyoruz. 
    //
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