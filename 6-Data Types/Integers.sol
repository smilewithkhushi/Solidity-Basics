// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract integertype {
    uint256 a; //unsigned integer uint8 to uint256
    int256 b; //signed integer int8 to int256

    //by default, int256 is choosen for int
    //by default, uint256 is choosen for uint

    //by default an int is initialized to 0.
    //overflow gets detected at compile time

    //int8 -> -128 to +127 ; uint8-> 0 to 255
    //int16 -> 032768 to +32767 ; uint -> 0 to 65535

    int256 count = 127;
    int16 count2 = -1233;
    int32 count3 = -123456;

    uint256 num = 23;
    uint8 num2 = 255;
    uint16 num3 = 26456;
}
