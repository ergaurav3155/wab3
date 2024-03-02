// SPDX-License-Identifier : MIT
pragma solidity ^0.8.24; // Use caret (^) for major version compatibility

contract Token {

    // Descriptive and standard variable names
    string public tokenName = "Gaurav"; // Capitalize first letter
    string public tokenSymbol = "ONE";
    uint256 public totalSupply = 0; // Use uint256 for large enough unsigned integer

    // Complete mapping declaration
    mapping(address => uint256) public balances;

    // Function to mint tokens (consider adding checks and events)
    function mint(address to, uint256 amount) public {
        require(amount > 0, "Minting amount must be greater than zero"); // Validate input
        totalSupply += amount;
        balances[to] += amount; // Assign minted tokens to recipient
    }

    // Function to burn tokens (consider adding checks and events)
    function burn(address from, uint256 amount) public {
        require(balances[from] >= amount, "Insufficient balance for burning"); // Ensure enough tokens
        totalSupply -= amount;
        balances[from] -= amount; // Deduct tokens from correct address
    }
}