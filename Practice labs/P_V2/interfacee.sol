// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

interface parent {
    

    // string public str;
    // address public manage;
    // cant declear state variables nor constructor
    // fnction cant be executed but decleard and as external
    // a restricted form of abstract
    // constructor() {
    //     str = "hello world";
    //     manage = msg.sender;
    // }
 
    function setter(string memory _str) external ;
}

contract child is parent
 {
    uint public x;   
    function setter(string memory _str) public override {}     
}




