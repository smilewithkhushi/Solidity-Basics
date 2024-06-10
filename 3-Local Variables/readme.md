## What are Local Variables?

Local variables are variables that are declared within a function and are only accessible within that function. They exist temporarily during the execution of the function and are not stored on the blockchain.

## Declaring Local Variables

Local variables are declared inside functions, and their values are stored in memory or the stack during function execution.

### Syntax

```solidity
function functionName() public {
    <type> <variableName> = <value>;
}
```

### Example

```solidity
contract Example {
    function add(uint a, uint b) public pure returns (uint) {
        uint sum = a + b;  // Local variable sum
        return sum;
    }
}
```

## Visibility Keywords

Visibility keywords define the access level of functions, but they do not apply to local variables directly. However, it's useful to understand them for function context.

- **public**: Accessible from within the contract, derived contracts, and externally.
- **internal**: Accessible from within the contract and derived contracts. (default)
- **private**: Accessible only within the contract where they are defined.
- **external**: Accessible only from external calls, not from within the contract.

### Example

```solidity
contract Example {
    function add(uint a, uint b) public pure returns (uint) {
        uint sum = a + b;  // Public function with local variable
        return sum;
    }

    function internalFunction() internal pure returns (string memory) {
        string memory message = "Hello, World!";  // Internal function with local variable
        return message;
    }

    function privateFunction() private pure returns (bool) {
        bool flag = true;  // Private function with local variable
        return flag;
    }

    function externalFunction() external pure returns (uint) {
        uint value = 42;  // External function with local variable
        return value;
    }
}
```

## Additional Keywords

- **pure**: Functions declared as `pure` promise not to read or modify the state.
- **view**: Functions declared as `view` promise not to modify the state but can read it.

### Example

```solidity
contract Example {
    uint public stateVariable = 5;

    function pureFunction(uint a, uint b) public pure returns (uint) {
        uint sum = a + b;  // Pure function with local variable
        return sum;
    }

    function viewFunction() public view returns (uint) {
        uint stateCopy = stateVariable;  // View function with local variable
        return stateCopy;
    }
}
```
