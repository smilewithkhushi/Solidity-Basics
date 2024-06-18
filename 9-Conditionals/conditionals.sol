// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract conditionals{

    function check(int a) public pure returns(string memory){
        string memory value;
        if (a>0){
            value="Greater than zero";
        }
        else  if(a<0){
            value="Smaller than zero";
        }
        else{
            value="Equal to zero";
        }
        return value;
    }
}