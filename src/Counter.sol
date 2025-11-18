// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Counter {
    uint256 public count;

    event Increment(address indexed who, uint256 newCount);
    event Decrement(address indexed who, uint256 newCount);

    function increment() public {
        count += 1;
        emit Increment(msg.sender, count);
    }

    function decrement() public {
        require(count > 0, "Cannot decrement below zero");
        count -= 1;
        emit Decrement(msg.sender, count);
    }

    function reset() public {
        count = 0;
    }
}
