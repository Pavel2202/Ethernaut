# Preservation

## Challenge

The goal of this level is for you to claim ownership of the instance you are given.

## Solution

First we call the `attack()` function and we pass the address of the `Hack` contract parsed into `uint256` so the next time `setFirstTime()` function is called it will execute the function in the `Hack` contract. We also add the three variable so it matches with the main contract. By calling the `setTime()` in the `Hack` contract we change the value of the `owner` variable in the `Preservation` contract.
