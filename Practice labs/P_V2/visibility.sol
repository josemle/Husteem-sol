// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract visibles {
    function v1() public pure returns (uint) {
        v2();
        return 1;
    }
    function v2() internal  pure returns (uint) {
        v1(); 
    }
    function v3() external  pure returns (uint) {
        return 4;
    }
    function v4() private  pure returns (uint) {
        return 5;
    }
}
    contract child is visibles {
        uint public x = v1();

    } 