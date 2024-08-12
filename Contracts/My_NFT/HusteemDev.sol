// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "./Counter.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract HusteemDevs is ERC721Enumerable, Ownable {
    uint constant public _price = 0.001 ether;
    uint constant public AllTokens = 50;

    // Whitelist-related variables
    uint public reserved;
    uint public claimed = 0;

    // Whitelist contract
    Counter public counter;

    constructor(address _contractaddress) ERC721("HusteemDevs", "HTD") {
        counter = Counter(_contractaddress);
        reserved = counter.maxwhitelist();
    }

    function mint() public payable {
        // Reservation for early birds
        require(totalSupply() + reserved - claimed < AllTokens, "EXCEEDED_MAX_SUPPLY");

        if (counter.availablelist(msg.sender) && msg.value < _price) {
            require(balanceOf(msg.sender) == 0, "Already owned");
            claimed += 1;
        } else {
            // Ensure minter has sent enough Ether
            require(msg.value >= _price, "Insufficient Ether");
        }

        uint tokenId = totalSupply() + 1;
        _mint(msg.sender, tokenId);
    }

    function withdraw() public onlyOwner {
        uint amount = address(this).balance;
        (bool sent, ) = owner().call{value: amount}("");
        require(sent, "Failed to send Ether");
    }
}
