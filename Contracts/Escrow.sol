// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract escrow {
    address public payer;
    address public payee ;
    address public third_party ;
    uint public amount;

    constructor(address _payer, address _payee, uint _amount) {
        payer = _payer;
        payee = _payee;
        //third_party = _third_party;
        amount = _amount;
        third_party = msg.sender;
    }
    // Deposit function to deposit the funds by the payer
    function   deposit () public payable  {
        require(msg.sender == payer, "only payer has permission");
        require(msg.value <= amount, "amount shoud be sufficient");
    }
    function transfer () public   {
        require (address(this).balance == amount, "ensure full amount is sent befor release") ;
        require(msg.sender == third_party, "only third party can release funds");
    payable(payee).transfer(amount);
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }
}
