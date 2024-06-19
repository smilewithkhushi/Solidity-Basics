// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract pay {
    //payable keyword is used to transfer ether in the contract using function
    function payEther() public payable {}

    //shows the balance of the particular  address
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    //the address shoul be converted to payaabl data type
    address payable user = payable(0x03C6FcED478cBbC9a4FAB34eF9f40767739D1Ff7);

    //transfer ether from contract to another account
    function sendEtherAccount() public {
        user.transfer(1 ether); //transfer 1 ether`
    }
}
