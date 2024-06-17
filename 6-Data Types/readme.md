# Solidity Data Types

Solidity is a statically-typed programming language used for writing smart contracts on the Ethereum blockchain. It supports various data types to store and manipulate data. In this readme file, we will discuss the different data types available in Solidity.

## Integers

Integers are used to represent whole numbers in Solidity. Solidity provides two types of integers: `int` and `uint`.

### `int`

The `int` type represents signed integers, which can be both positive and negative. It has a fixed size and can be declared with different bit sizes, such as `int8`, `int16`, `int32`, and so on. The range of `int` depends on the bit size and is calculated as follows:

For an `intN` type, the range is from -(2^(N-1)) to (2^(N-1))-1.

### `uint`

The `uint` type represents unsigned integers, which can only be positive or zero. Like `int`, it also has a fixed size and can be declared with different bit sizes, such as `uint8`, `uint16`, `uint32`, and so on. The range of `uint` is calculated as follows:

For a `uintN` type, the range is from 0 to (2^N)-1.

It's important to choose the appropriate bit size for integers based on the range of values you expect to store. Using a smaller bit size than required may result in overflow or underflow errors.


## Operators for Integers in Solidity

In Solidity, you can perform various operations on integers using different operators. Some of the commonly used operators for integers in Solidity are:

- Arithmetic Operators:
    - Addition (`+`): Adds two integers together.
    - Subtraction (`-`): Subtracts one integer from another.
    - Multiplication (`*`): Multiplies two integers.
    - Division (`/`): Divides one integer by another.
    - Modulo (`%`): Returns the remainder of the division between two integers.

- Comparison Operators:
    - Equal to (`==`): Checks if two integers are equal.
    - Not equal to (`!=`): Checks if two integers are not equal.
    - Greater than (`>`): Checks if one integer is greater than another.
    - Less than (`<`): Checks if one integer is less than another.
    - Greater than or equal to (`>=`): Checks if one integer is greater than or equal to another.
    - Less than or equal to (`<=`): Checks if one integer is less than or equal to another.

- Bitwise Operators:
    - Bitwise AND (`&`): Performs a bitwise AND operation between two integers.
    - Bitwise OR (`|`): Performs a bitwise OR operation between two integers.
    - Bitwise XOR (`^`): Performs a bitwise XOR operation between two integers.
    - Bitwise NOT (`~`): Performs a bitwise NOT operation on an integer.

These operators allow you to perform various calculations and comparisons on integers in Solidity. Make sure to choose the appropriate operator based on your specific requirements.

