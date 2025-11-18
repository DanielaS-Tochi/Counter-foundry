// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter c;

    function setUp() public {
        c = new Counter();
    }

    function testInitialIsZero() public view {
        assertEq(c.count(), 0);
    }

    function testIncrement() public {
        c.increment();
        assertEq(c.count(), 1);
    }

    function testDecrement() public {
        // increment first so we can decrement safely
        c.increment();
        assertEq(c.count(), 1);

        c.decrement();
        assertEq(c.count(), 0);
    }

    function testDecrementRevertsIfZero() public {
        // Expect revert because count is 0
        vm.expectRevert(bytes("Cannot decrement below zero"));
        c.decrement();
    }
}
