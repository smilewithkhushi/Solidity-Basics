// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract bytearrays {
    bytes3 public b1; //array of 3 bytes
    bytes2 public b2; //array of 2 bytes
    bytes2 public b22;

    function setter() public {
        b1='abc';         //the data stored is 0x616263 as 61->a , 62->b and 63->c in hexademical format
        b1[0]='d';      //not possible as single bytes in such arrays cannot be modified

        b2='kp';

        b22='a';        //the data stored is 0x6100, 61 -> a and 00 for no character
    }
}

/*
1 byte = 8 bits
1 hexadecimal digit = 4 bits

everything that will be stored in the byte array will be in the form of hexadecimal digits

*/
