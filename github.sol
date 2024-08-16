// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {

    event CalculationResult(string operation, int256 result);

    // Function to add two numbers
    function add(int256 a, int256 b) public returns (int256) {
        int256 result = a + b;
        emit CalculationResult("Addition", result);
        return result;
    }

    // Function to subtract two numbers
    function subtract(int256 a, int256 b) public returns (int256) {
        int256 result = a - b;
        emit CalculationResult("Subtraction", result);
        return result;
    }

    // Function to multiply two numbers
    function multiply(int256 a, int256 b) public returns (int256) {
        int256 result = a * b;
        emit CalculationResult("Multiplication", result);
        return result;
    }

    // Function to divide two numbers
    function divide(int256 a, int256 b) public returns (int256) {
        require(b != 0, "Division by zero is not allowed");
        int256 result = a / b;
        emit CalculationResult("Division", result);
        return result;
    }
}
