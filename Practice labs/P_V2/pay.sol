// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract pay {

    // address payable user=payable (0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    // function payy() public payable {}


    function paying() public  view returns (uint) {
        return address(this).   balance;
    }
    function send() public {
        user.transfer(10);
    }
    fallback() external payable { 
        payable (msg.sender).transfer(msg.value); 
    }
}
