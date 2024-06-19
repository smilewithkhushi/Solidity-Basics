// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

//Mapping assigned a value to the particular keys. the keys are unique and values can be easily accessed by them
//Example: every student in class has a unique roll number

contract mapDemo {

    //mapping(key datatype => value datatype) , here uint with string
    mapping(uint256 => string) public roll_no;
    function setter(uint256 _key, string memory _value) public {
        roll_no[_key] = _value;
    }

    //mapping uint with struct type
    struct Student{
        uint class;
        string name;
    }

    mapping(uint => Student) public data;

    function dataSetter(uint _roll, uint class, string memory name) public{
        data[_roll]=Student(class,name);
    }
}
//Mapping follows hashing

//key types cannot be of mapping, dynamic array, enum and struct.
//values can be of any type.
//mappings ar always stored in storage irrespective of whether they are declared in contract storage or not.