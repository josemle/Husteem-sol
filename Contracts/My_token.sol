// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// using the open source library; OPen Zepelin // Thank you.
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract Husteemah is ERC20 {

    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        _mint(msg.sender, 1000000 * 10 ** 18);
    }
}
