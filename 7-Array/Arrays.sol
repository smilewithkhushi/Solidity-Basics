// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

//array is the data type which stores more than one data values

contract arrays {
    //an array named arr of size 4.
    //the compiler is told the size of array before compilation hence it shows out of bond error for invalid index values
    uint256[4] public arr = [10, 20, 30, 40];

    //function to upate the value of array
    function setter(uint256 index, uint256 value) public {
        arr[index] = value;
    }

    //function to display the length of the array
    function length() public view returns (uint256) {
        return arr.length;
    }
}
