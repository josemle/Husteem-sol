// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;



contract dynamic_arrays {
    uint[] public kano=[4];

    function adder(uint king) public {
        kano.push(king);
    }
    
    function remover() public  {
        kano.pop();
    }

    function lenth() public view returns (uint) {
        return kano.length;
    }
    
}