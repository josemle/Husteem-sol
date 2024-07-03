// SPDX-License-Identifier: MIT
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo
 {
    int number;
    constructor() {
        number = 5;
    }

    function getter () public view returns (int)
     {
        return number;
    }

    function setter() public {
        number=number+1;
    }

 }
