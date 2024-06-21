// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract demo {
    string[] public student = ["Ravi", "Rita", "Aman"];

    //FUNCTION that uses memory
    function hasMemory() public {
        string[] memory s1 = student;
        //here, S1 becomes the copy of the student array and stores the same values
        s1[0] = "Akash";
        //this value doesnt update the student array, it instead updates only the newarray
    }

    //function that uses storage
    function hasStorage() public {
        string[] storage s1 = student;
        s1[0] = "Akash";
        //this updates the value of the student array.
        //here, S1 doensnt copy the array, instead, it points to the address of s1
    }
}
