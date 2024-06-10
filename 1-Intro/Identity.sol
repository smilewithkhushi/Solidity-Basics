//creating a contract with name identity, this contract stores the name and the age of the person

//license name
pragma solidity >=0.5.0 <0.9.0;

//contract keyword intiates the smart contract
//similar to the classes and objects in OOPS
contract identity{

    string name;        //string type
    uint age;           //unsigned integer

    constructor() public{
        name="Khushi";
        age=17;
    }

    //function : initaitises a username function, here getName()
    //view : restricts the function to only be viewable
    //public : available to everyone
    //returns () : return type is important

    //since the string is stored in memory :: string memory
    function getName() view public returns(string memory){
        return name;
    }

    function getAge() view public returns(uint){
        return age;
    }

    //sets the age to be incremented by 1
    function setAge()public{
        age=age+1;
    }

    //sets the name as empty
    function setName() public{
        name="";
    }
}