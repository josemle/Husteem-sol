// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

// states in solidity > stored on chain and exucutes with ether
contract state {
    uint public age ;
    string public name = "husteemah";

    // constructor ()  {
    //     age = 20;
    // } 
    function getter () public {
        age= 30;
    }
    function adder () public {
        age = age+2;
    }
}