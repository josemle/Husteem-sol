// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract lowp {
    uint[] public size = [1,2,3,4,5];
    uint public sum=0;

    function lowp1() public  {
        uint count ;
        while (count<size.length){
            sum=sum+size[count];
            count++;
        }
    }
    
}