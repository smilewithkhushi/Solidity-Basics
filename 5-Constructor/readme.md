# Solidity Constructors

In Solidity, constructors are special functions that are automatically executed when a contract is deployed. They are used to initialize the state variables of the contract and perform any necessary setup.

## Characteristics of Constructors

- Constructors have the same name as the contract and do not have a return type.
- Constructors are optional in Solidity. If no constructor is defined, a default constructor with no arguments is provided by the compiler.
- Constructors can be overloaded, allowing multiple constructors with different parameter lists.

## Properties of Constructors

- Constructors are executed only once during the deployment of a contract.
- Constructors can have access modifiers such as `public`, `private`, or `internal`, controlling the visibility of the constructor.
- Constructors can accept parameters, allowing for initialization with custom values.
- Constructors can contain any valid Solidity code, including variable assignments, function calls, and event emissions.
