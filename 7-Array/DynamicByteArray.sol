// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract DynamicByteArray {

    //bytes[] is used to create a dynamic size array of byte type
    bytes[] public arr1;

    bytes public b1='abc';

    function pushElement() public{
        //pushes the element in the end of the array
        b1.push('k');
    }

    function getElement(uint index) public view returns (bytes1){
        return b1[index];
    }

    function getLength() public view returns (uint){
        return b1.length;
    }
}
