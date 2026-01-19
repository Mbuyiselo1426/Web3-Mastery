// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PiggyBank {
    // State variable to store the owner's address
    address public owner;

    // The constructor sets the person who deploys the contract as the owner
    constructor() {
        owner = msg.sender;
    }

    // 'payable' allows this function to receive Ether
    receive() external payable {}

    // Function to check the balance of the piggy bank
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // Only the owner can withdraw and "smash" the piggy bank
    function withdraw() public {
        
        require(msg.sender == owner, "You are not the owner!");
        
        // Transfer all funds to the owner
        payable(owner).transfer(address(this).balance);
    }
}
