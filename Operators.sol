// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OperatorsDemo {
    // Arithmetic Operators
    uint public a = 10;
    uint public b = 3;

    uint public sum = a + b;        // Addition
    uint public diff = a - b;       // Subtraction
    uint public mul = a * b;        // Multiplication
    uint public divi = a / b;       // Division
    uint public mod = a % b;        // Modulus (remainder)

    // Comparison Operators
    bool public isEqual = (a == b);     // Equal to
    bool public isNotEqual = (a != b);  // Not equal to
    bool public isGreater = (a > b);    // Greater than
    bool public isSmaller = (a < b);    // Less than
    bool public isGreaterOrEqual = (a >= b);
    bool public isSmallerOrEqual = (a <= b);

    // Logical Operators
    bool public bool1 = true;
    bool public bool2 = false;

    bool public andOp = bool1 && bool2; // Logical AND
    bool public orOp = bool1 || bool2;  // Logical OR
    bool public notOp = !bool1;         // Logical NOT

    // Assignment Operators
    uint public x = 5;

    // Solidity me assignment chaining nahi hoti like x += 2 += 3 ❌
    // Lekin simple assignments possible hain:
    uint public addAssign = x + 3; // x += 3 ka effect
    uint public subAssign = x - 2; // x -= 2 ka effect
}
