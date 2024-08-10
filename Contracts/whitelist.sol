// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Husteemas_whitelist{
    uint public maxwhitelist;
    mapping (address => bool) public availablelist;
    address user;
    uint counter;

    constructor(uint _slots)  {
        maxwhitelist = _slots;
    }

    function list() public {
        require(!availablelist [msg.sender], "user already exist");
        require( counter < maxwhitelist, "Better luck, slots occupied!");
        availablelist[msg.sender] = true;
        counter ++;
    }

}
