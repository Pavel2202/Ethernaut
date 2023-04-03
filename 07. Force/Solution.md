# Force

## Challenge

The goal of this level is to make the balance of the contract greater than zero..

## Solution

We create a new contract `Hack.sol` and in it's constructor we call `selfdestruct` with the address of the `Force` contract.
