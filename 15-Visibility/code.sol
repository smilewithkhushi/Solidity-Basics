// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract demo {
    //visible outside the environment
    function f1() public pure returns (uint256) {
        return 1;
    }

    function f2() private pure returns (uint256) {
        return 2;
    }

    function f3() internal pure returns (uint256) {
        uint256 x = f2();
        return 3;
    }

    //visible outside the environment
    //they cannot be accessed within the contract
    function f4() external pure returns (uint256) {
        return 4;
    }
}

//inheritance of the contract
contract childdemo is demo {
    //internal function can be shown in the child contracts
    uint256 public child_var = f3();

    //external function cnnot be accessed within the contract
    uint256 public child_var2 = f4();

    //private function cannot be accessed by the child contract
    uint256 public child_var3 = f2();

    //public function can be accessed by the child contract
    uint256 public child_var4 = f1();
}

//other contract

contract otherContract {
    demo obj = new demo(); //creating the object of contract demo
    uint256 public cx = obj.f1(); //object can access the public & external functions
    uint256 public cy = obj.f4();
}
