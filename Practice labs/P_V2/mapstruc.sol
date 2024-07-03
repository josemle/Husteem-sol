// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract map {
    struct member{
        string name;
        uint age;
        uint kg;
    }

    mapping (uint=>member) public roster;
    function student(uint take, uint age, uint kg, string memory name) public  {
        roster[take] = student(
             age, kg, name);
    }

    
}