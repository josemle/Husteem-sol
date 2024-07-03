// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

//stored in log files

contract eventss {
    string public str;
    
    event alert (address manager, string char);
     function check(string memory _str)  public {
        str = _str;
        emit alert (msg.sender, str);
     }
}