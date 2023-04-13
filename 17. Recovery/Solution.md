# Recovery

## Challenge

This level will be completed if you can recover (or remove) the 0.001 ether from the lost contract address.

## Solution

We create `Helper` contract and in the `recover()` function we pass the `Recovery` contract address. In the function we calculate the address of the deployed `SimpleToken` contract. And then we call the `destroy()` function to send the tokens token to ourselves.
