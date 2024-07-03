// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract requiree {

    address public owner;
    
    // function setOwner(address _newOwner) external{
    //     require(msg.sender==owner,"Only the owner can set the owner");
    //     owner = _newOwner;
    // }

    constructor() {
        owner= msg.sender;
    }
    
    function get() public view  returns (uint) {
        require( owner==msg.sender, "Yauwwa, kai barawo neh. HAHAH");
        return 19;
    }

    
}