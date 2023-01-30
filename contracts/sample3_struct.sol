pragma solidity ^0.8.0;

//SPDX-License-Identifier: Unlicensed

contract Structer{

    struct Order{
        address costumer;
        string zipCoder;
        uint256[] products; // array tipinde değişken tanımladık.

    }
}