// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract eunm {

enum mine {stop, go, wait }
    mine public a1= mine.go;
    mine public a2= mine.wait;
    mine public a3= mine.stop;

    string public car;

    function trafic() public view  {
        if (a1==mine.go) {
            car="yes";
        }
        else (!a1==mine.go);{
        car="no";
        }
    }
}