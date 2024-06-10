
//local variables are stored in the stack, instead of storing into the contract storage or blockchain

pragma solidity>=0.5.0<0.9.0;

contract local{

    string myname;
    //contract storage saves the string by default


    function store() pure public returns(uint){

        //local variable : lies inside the function and stored in stack
        uint age=40;

        //string is by default stored in the contract storage
        //in order to store the string in the memory (instead of stack or contract)
        string memory name="Khushi";

        return age;
    }
}