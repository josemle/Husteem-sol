// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

// Abstract --> unused fuctions are to be abstracted. while used on children call should be overridden 
 abstract contract parent {
    string public str;
    address public manage;
    
    constructor() {
        str = "hello world";
        manage = msg.sender;
    }
 
    function setter(string memory _str) public virtual    {
    
    }
} 
contract child is parent
 {
    uint public x;       
}




