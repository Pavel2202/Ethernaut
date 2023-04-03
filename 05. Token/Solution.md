# Token

## Challenge

The goal of this level is for you to hack the basic token contract below.

You are given 20 tokens to start with and you will beat the level if you somehow manage to get your hands on any additional tokens. Preferably a very large amount of tokens.

## Solution

In version `^0.6.0` of Solidity there are underflows and overflows. In the contract `SafeMath` is not used so we can create underflow to pass the `require()` in the `transfer()` function. We create new contract `Hack` and an interface `IToken` that points to the `Token` contract. In the `constructor` of the `Hack` contract we call the `transfer()` function with any value. The current contract has a balance of 0 therefore we pass the `require()`.
