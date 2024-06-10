
//declaring the solidity version
pragma solidity >= 0.5.0 < 0.9.0;

//state variable are defined as the variables or the containers that store data 
//the state variables take certain amount of gas fee. more variables = more gas fee

contract State{

    //the variable with public keyword get assiend with get and set function
    uint public age;
    uint public name;
    //default value of age here is zero

    //using construtor to initialize the value of age
    constructor() public{
        age=10;
    }

    function setAge() public returns(uint){
        age=age+1;
    }


}