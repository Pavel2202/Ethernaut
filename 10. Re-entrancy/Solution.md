# Re-entrancy

## Challenge

The goal of this level is for you to steal all the funds from the contract.

## Solution

Since the `Reentrance` contract updates the balance after it sends `eth` we can create new contract `Hack` that has a `receive()` function that will drain all the `eth` from the `Reentrance` contract. After the attack is finished, we `selfdestruct` the `Hack` contract and send the money to us.
