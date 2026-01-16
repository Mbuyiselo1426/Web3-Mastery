// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {
    // This is a "State Variable" - it is stored on the blockchain
    string public myMessage;

    // This runs only once when you deploy the contract
    constructor() {
        myMessage = "My first blockchain code!";
    }

    // This function allows us to change the message
    function updateMessage(string memory _newMessage) public {
        myMessage = _newMessage;
    }
}
