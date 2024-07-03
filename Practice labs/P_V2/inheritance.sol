// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract parent {
    string public str;
    address public manage;
    
    constructor() {
        str = "hello world";
        manage = msg.sender;
    }
 
    function setter(string memory _str) public   {
        str=_str;
    }
} 
contract child is parent
 {
    uint public x;       
}




