// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

//ENUM refers to the data type which contains any constant or integral value assigned to a name
//it can be either created outside the contract or inside.

contract enumDemo{
    //enum keyword is used, then the variable name
    //the curly bracket contain same type of data
    enum user{allowed, not_allowed, wait}

    enum size{S, M, L, XL, XXL}

    user public u1 = user.allowed;          //0
    user public u2 = user.not_allowed;      //1
    user public u3 = user.wait;             //2
    //ENUM enhances the readability of the code in smaller sets

    uint public lottery=3000;

    function owner() public{

        if (u1==user.allowed){
            lottery=0;
            //the lotter amount is given to the user if allowed
        }

    }
    
    function changeOwner() public{
        u1=user.not_allowed;
    }

}