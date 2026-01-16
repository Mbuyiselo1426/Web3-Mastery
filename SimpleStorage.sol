// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    // uint256 means a positive whole number (up to 256 bits)
    uint256 public favoriteNumber;

    // This function changes the blockchain state (Costs Gas)
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // 'view' means it only reads from the blockchain (Costs NO Gas if called externally)
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}
