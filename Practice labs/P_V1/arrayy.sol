// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

//fixed arrays
contract arrays {
    uint[4] public id = [5, 10, 15, 20];

    function size(uint no, uint new_id) public  {
        id[no] = new_id;
    }
     
     function len()public view returns(uint) {
        return id.length;
     }
    
}