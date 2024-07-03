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

    modifier secure {
        require( owner==msg.sender, "Yauwwa, kai barawo neh. HAHAH"); _;

    }
    
    function get() public view secure returns (uint) {
        return 19;
    }

    function get2( string memory str) public view secure returns (string memory) {
        
        return str;
    }
    

    
}