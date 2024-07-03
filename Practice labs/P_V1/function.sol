// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract functionn
 {

    int public age = 10;
    string public  name = "husteemah";

    function adder() public  {
        age = age+1;
    }

    function disrupt(int newage, string  memory newname)public {
        age = newage;
        name = newname;
    }
    
} 