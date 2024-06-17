// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract cons{

    uint public age=10;
    uint public count;

    //initializing the constructor for the function
    constructor(){
        count=10;
    }

    //passing arguments to the constructor, these arguments are necessary to be provided before the deployment
    constructor(uint new_count)
    {
        count=new_count;
    }
}