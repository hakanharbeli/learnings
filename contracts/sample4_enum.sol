pragma solidity ^0.8.0;

//SPDX-License-Identifier: Unlicensed

contract Enumer{
    //enum tipinde Gate adında bir değişken tanımladık. 
    //liste arraylist gibi sıfırdan başlayarak indexlendi
    enum Gate{OPEN,CLOSED,Tree}

    Gate kapi = Gate.OPEN;

    function GateClose()public{
        kapi = Gate.Tree;
        //fonksiyonla enum içindeki Tree değerini kapı değişkenine tanımladık
    }

    function DurumNe() public view returns(Gate){
        return kapi;
        //çıktı olarak 2 değerini verecek
    }
}