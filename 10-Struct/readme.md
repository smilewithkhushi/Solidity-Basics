# Struct Data Type in Solidity

In Solidity, a struct is a user-defined data type that allows you to group together different variables of different types into a single unit. It is similar to a class in object-oriented programming languages.

## Declaring a Struct

To declare a struct in Solidity, you use the `struct` keyword followed by the name of the struct and a list of member variables inside curly braces. Here's an example:

```solidity
struct Person {
    string name;
    uint age;
    address wallet;
}
```

In the above example, we have defined a struct named `Person` with three member variables: `name` of type `string`, `age` of type `uint`, and `wallet` of type `address`.

## Creating Instances of a Struct

Once you have defined a struct, you can create instances of it by using the struct name followed by the member variables enclosed in curly braces. Here's an example:

```solidity
Person person1 = Person("Alice", 25, 0x1234567890);
```

In the above example, we have created an instance of the `Person` struct named `person1` with the values "Alice" for the `name` variable, 25 for the `age` variable, and 0x1234567890 for the `wallet` variable.

## Accessing Struct Members

To access the member variables of a struct, you use the dot notation. Here's an example:

```solidity
string personName = person1.name;
uint personAge = person1.age;
address personWallet = person1.wallet;
```

In the above example, we have accessed the `name`, `age`, and `wallet` member variables of the `person1` struct instance and assigned them to separate variables.

## Pointers to Structs

In Solidity, you can also use pointers to refer to struct instances. Pointers allow you to modify the original struct instance directly. Here's an example:

```solidity
Person storage personRef = person1;
personRef.age = 30;
```

In the above example, we have created a pointer `personRef` that points to the `person1` struct instance. By modifying the `age` member variable of `personRef`, we are also modifying the `age` of the original `person1` struct instance.
