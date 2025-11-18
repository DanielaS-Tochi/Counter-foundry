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
}
