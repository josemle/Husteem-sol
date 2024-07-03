// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract bytearrays {
    bytes public tank ="abc";

    function adder()public {
        tank.push('w');
    }
    function place(uint input) public view returns(bytes1) {
        return tank [input];    }

    function len() public view returns (uint){
    return tank.length;
    }
}