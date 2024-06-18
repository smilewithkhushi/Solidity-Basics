// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

//struct refers to the structure which can represent our own made data type.
//it is similar to classes in C++ programming,

/*

struct school{
    uint roll;
    string name;
}

*/

//struct can be created inside as well as outside the contract
// the struct used outside the contract can be used and accessed by multiple contracts

struct Student {
    uint256 roll;
    string name;
}

contract structDemo {
    //objects created for Student class/struct
    Student public student1;

    //constructor gets input during compile time here
    constructor(uint256 _roll, string memory _name) {
        student1.roll = _roll;
        student1.name = _name;
    }

    //this function updates the existing object student1
    function updateDetails(uint256 newroll, string memory newname) public {
        Student memory new_student = Student({roll: newroll, name: newname});

        student1 = new_student;
    }
}
