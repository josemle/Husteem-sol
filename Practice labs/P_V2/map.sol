// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract map {
    mapping (uint=>string) public roster;
    function student(uint sn, string memory name) public  {
        roster[sn] = name;
    }

    
}