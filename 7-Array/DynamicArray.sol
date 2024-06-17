// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

//dynamic array is the data type which stores more than one data values and its size can be changed

contract arrays {
    //dynamic size array is created where the size isnt defined at the compile time
    uint256[] public arr;

    function pushElement(uint256 item) public {
        //push() is used to add elements to the array
        arr.push(item);
    }


    function length() public returns (uint256) {
        return arr.length;
    }

    function popElement() public {
        arr.pop();
    }

    function printPopElement() public returns (uint256) {
        uint256 len = arr.length;
        uint256 val = arr[len - 1];
        arr.pop();
        return val;
    }

}
