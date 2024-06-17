pragma solidity >=0.5.0 <0.9.0;

contract local {

    uint256 age = 10;

    //no gas fee is paid in the getter function
    function getter() public view returns (uint256) {
        return age;
    }

    //newage is the argument passed to the function
    //in the setter function, the gas fee is paid
    function setter(uint256 newage) public {
        age = newage;
    }

    uint public marks=50;
    //for this public variable, automatically the getter and setter function is created upon deplyment
}
