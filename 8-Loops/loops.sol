/*
TYPES OF LOOPS ":
- FOR
- WHILE
- DO WHILE
*/

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract loops {
    uint256[3] public arr;

    uint256 public count = 0;

    //create a function in order to add a loop in your contract

    function loop() public {
        //while loop
        uint256 value = 2;
        while (count < arr.length) {
            arr[count] = 2 * value;
            value = value + 3;
            count = count + 1;
        }
    }

    //function of for-loop
    function forloop() public {
        for (uint256 i = count; i < arr.length; i++) {
            arr[count] = count;
        }
    }

    //function of do-while loop
    function dowhile() public {
        do {
            arr[count] = count;
            count++;
        } while (count < arr.length);
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

  function getArray() public view returns (uint[3] memory) {
    return arr;
  }
}
