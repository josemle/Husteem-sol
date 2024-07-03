// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract arraystoreage {
 string[] public vehicles = ['car', 'bus', 'ship'];

    function mem() public view   {
        string[] memory v1= vehicles;
        v1 [0]= 'bike';
    }
    function sto() public   {
        string[] storage v2= vehicles;
        v2 [0]= 'bus';
    }
}