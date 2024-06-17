// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract local{
    uint public age=10;

    //view is used only while reading the function
    function get() public view returns (uint){
        return age;
    }
    
    //we cannot use Pure keyword here because the function has to read the state variable
    function getter() public pure returns (uint){
        return age;
    }

    //pure keyword is valid here
    function newgetter() public pure returns (uint){
        uint marks=100;
        return marks;
    }

    //Pure is used in the places when you neither read or write the state variable
}