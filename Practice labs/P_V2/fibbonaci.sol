// SPDX-License-Identifier: MIT
pragma solidity =0.8.0;

contract Fibonacci {
    function fib(uint256 n) external pure returns (uint256) {
        if (n == 0) {
            return 0;
        }
        uint256 a = 1;
        uint256 b = 1;
        for (uint256 i = 2; i < n; i++) {
            uint256 c = a + b;
            b = a;
            a = c;
        }
        return a;
    }
}
