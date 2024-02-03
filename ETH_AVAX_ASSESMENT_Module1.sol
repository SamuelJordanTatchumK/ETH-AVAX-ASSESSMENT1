// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SecureTransaction {
    uint public accountBalance = 0;

    function withdrawFunds(uint amount) public {
        require(accountBalance >= amount, "Insufficient balance for withdrawal");
        accountBalance -= amount;
    }

    function depositFunds(uint amount) public {
        require(accountBalance + amount <= 500, "Balance limit exceeded");
        accountBalance += amount;
    }

    function isBalanceZero() public view returns (string memory) {
        assert(accountBalance == 0);
        return "Your balance is zero, no funds available for the transaction.";
    }

    function performRevert() public pure {
        revert("This function intentionally triggers a revert statement");
    }
}
