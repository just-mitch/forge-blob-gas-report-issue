// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        bytes32[] memory blobInputs = new bytes32[](1);
        blobInputs[0] = bytes32(abi.encode(1));
        vm.blobhashes(blobInputs);
        counter = new Counter();
    }

    function test_Increment() public {
        counter.increment();
    }
}
