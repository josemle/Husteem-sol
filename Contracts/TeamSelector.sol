// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

    contract teamplsyers {
        address[16] players;
        
        function gettemplayers() public view returns (address[16] memory) {
            return players;
        }
        function selectplayer(uint256 position) public returns (uint) {
            require(position >=0 && position <= 15, "error");
            players[position] = msg.sender;
            return position;

        }
    }
