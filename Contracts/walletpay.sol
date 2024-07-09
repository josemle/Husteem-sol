// SPDX-License-Identifier: MIT
// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract wallet {
    address payable public owner;
    constructor(address payable _owner) {
    owner = _owner; 
    }
    function deposit () public payable  {}
    function sendeth (address payable to, uint256 amount) public payable{
        // if (msg.sender==owner) {
        //     to.transfer(to, 10);
        // }
        // return ("send not allowed");
    

    require (msg.sender == owner, "kai dan iska neh");
    require(address(this).balance >= amount, "Insufficient balance in contract");
     to.transfer(amount);
}

    function balance () public view returns (uint) {
        return address(this).balance;
    }

    // Function to withdraw ether from the contract (only callable by the owner)
    function withdraw(address payable to, uint256 amount) public returns (bool) {
        require(msg.sender == owner, "Only owner can withdraw");
        require(address(this).balance >= amount, "Insufficient balance in contract");
        
        to.transfer(amount); // Transfer the specified amount to 'to'
        return true; // Return true if the transfer was successful
    }

  
  function rem (address payable to, uint256 amount) public returns (bool){
        require (msg.sender == owner, "only owner can withdraw"); //only the owner can withdraw funds from the contract
        to.transfer(amount); //transfer the amount to the specified address
        return true; //return true if the transfer was successful
    }

}
