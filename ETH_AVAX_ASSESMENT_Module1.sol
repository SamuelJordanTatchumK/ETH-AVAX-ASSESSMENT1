// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract ExceptionHandling {

    // Function to demonstrate the use of require statement
    function requireExample(uint256 x, uint256 y) public pure returns (uint256) {
        // Require that the condition is true, otherwise revert with an error message
        require(x > y, "x must be greater than y");
        
        // If the require statement passes, return the result
        return x - y;
    }

    // Function to demonstrate the use of assert statement
    function assertExample(uint256 a, uint256 b) public pure returns (uint256) {
        // Assert that the condition is true, otherwise trigger an unrecoverable error
        assert(a < b);
        
        // If the assert statement passes, return the result
        return b - a;
    }

    // Function to demonstrate the use of revert statement
    function revertExample(uint256 amount) public pure returns (uint256) {
        // Perform some logic
        
        // If a condition is not met, trigger a revert with an error message
        if (amount > 100) {
            revert("Amount should not exceed 100");
        }
        
        // If the condition is met, return the result
        return amount * 2;
    }
}
