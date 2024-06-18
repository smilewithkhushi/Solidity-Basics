# Solidity Data Types
In this readme file, we will discuss the different data types available in Solidity.

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


## Boolean
The `bool` data type in Solidity represents a boolean value, which can be either `true` or `false`. It is used to store and manipulate logical values in smart contracts.

### Declaration
To declare a `bool` variable, you can use the following syntax:
```solidity
bool myBool = true;
```

### Operators for Booleans in Solidity
In Solidity, you can perform logical operations on boolean values using different operators. Some of the commonly used operators for booleans in Solidity are:

- Logical AND (`&&`): Returns `true` if both operands are `true`, otherwise returns `false`.
- Logical OR (`||`): Returns `true` if at least one of the operands is `true`, otherwise returns `false`.
- Logical NOT (`!`): Returns the opposite boolean value of the operand.

These operators allow you to combine and manipulate boolean values based on logical conditions.

### Comparison Operators
You can also use comparison operators to compare boolean values in Solidity. The following comparison operators are available:

- Equal to (`==`): Checks if two boolean values are equal.
- Not equal to (`!=`): Checks if two boolean values are not equal.

These comparison operators return a boolean value (`true` or `false`) based on the comparison result.

### Conditional Statements
Boolean values are often used in conditional statements to control the flow of execution in smart contracts. The most common conditional statements used in Solidity are:

- If statement: Executes a block of code if a certain condition is `true`.
- If-else statement: Executes a block of code if a certain condition is `true`, otherwise executes a different block of code.
- Switch statement: Allows you to select one of many code blocks to be executed based on the value of a variable.

These conditional statements help you make decisions and perform different actions based on the boolean values.

### Example
Here's an example that demonstrates the usage of the `bool` data type and its operators in Solidity:

```solidity
bool isApproved = true;
bool isVerified = false;

if (isApproved && !isVerified) {
    // Execute some code if the condition is true
} else {
    // Execute some code if the condition is false
}
```

In this example, the code inside the `if` block will be executed if `isApproved` is `true` and `isVerified` is `false`. Otherwise, the code inside the `else` block will be executed.

