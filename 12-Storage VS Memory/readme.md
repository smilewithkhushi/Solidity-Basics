# Storage vs Memory in Solidity

In Solidity, there are two main types of data storage: `storage` and `memory`. Understanding the difference between these two is crucial for writing efficient and secure smart contracts.

## Storage

`storage` refers to the permanent storage space on the blockchain. It is used to store variables that need to persist across multiple function calls and even after the contract is destroyed. Data stored in `storage` is expensive in terms of gas costs and should be used judiciously.

Here's an example of using `storage` in Solidity:

```solidity
contract StorageExample {
    uint256 public myNumber;

    function setNumber(uint256 _number) public {
        myNumber = _number;
    }
}
```

In the above example, `myNumber` is stored in `storage` and can be accessed and modified by any function within the contract.

## Memory

`memory` is a temporary storage area used for storing variables during the execution of a function. Unlike `storage`, data stored in `memory` is not persisted on the blockchain and is cleared once the function execution is complete. Using `memory` is more gas-efficient compared to `storage`.

Here's an example of using `memory` in Solidity:

```solidity
contract MemoryExample {
    function addNumbers(uint256 _a, uint256 _b) public pure returns (uint256) {
        uint256 result = _a + _b;
        return result;
    }
}
```

In the above example, the variables `_a`, `_b`, and `result` are stored in `memory` as they are only required during the execution of the `addNumbers` function.

