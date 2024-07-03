// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

    struct class {
        uint id;
        string name;
    }

contract structure {
    
    class public c1;

    constructor  (uint no, string memory reg)  {
        c1.id = no;
        c1.name = reg;
    }

    function added(uint no, string memory reg) public {
        class memory new_class=class({
            id:no, 
            name:reg
        });
        c1=new_class;
    }
}