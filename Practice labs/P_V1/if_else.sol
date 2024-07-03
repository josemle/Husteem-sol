// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract statement {
    

    function cheker(int num) public pure returns ( string memory ) {
        string memory answer;

        if (num > 0) {
            answer = "the input is greater than zero and true";
        }
        else if (num ==0) {
            answer = "the input is greater than - and les than +";
        } else {
            answer = "then input is lesser than zero";
        }
        return answer;
    }
        
    
}