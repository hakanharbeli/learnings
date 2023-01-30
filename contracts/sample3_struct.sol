pragma solidity ^0.8.0;

//SPDX-License-Identifier: Unlicensed

contract Structer{
//Yapılar (structs), nesneye yönelik programlama dillerindeki sınıflarla (classes) benzer işleve sahiptir
// Diğer dillerde class olarak isimlendirilen sınıflar Solidity'de struct olarak isimlendirilir.
    struct Order{
        address costumer;
        string zipCoder;
        uint256[] products; // array tipinde değişken tanımladık.

    }
}