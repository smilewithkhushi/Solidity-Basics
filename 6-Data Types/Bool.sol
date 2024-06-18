// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

//bool type consists of true and false

contract booltype {
    bool public value = true;
    bool public val2 = false;

    function check(uint256 a) public returns (bool) {
        if (a > 100) {
            value = true;
        } else {
            value = false;
        }
        return value;
    }
}
