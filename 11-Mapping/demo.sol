// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

//Mapping assigned a value to the particular keys. the keys are unique and values can be easily accessed by them
//Example: every student in class has a unique roll number

contract mapDemo{

    mapping(uint=>string) public roll_no;

    function setter(uint _key, string memory _value) public{
        roll_no[_key]=_value;
    }
}
//Mapping follows hashing