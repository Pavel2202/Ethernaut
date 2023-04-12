# Naught Coin

## Challenge

NaughtCoin is an ERC20 token and you're already holding all of them. The catch is that you'll only be able to transfer them after a 10 year lockout period. Can you figure out how to get them out to another address so that you can transfer them freely? Complete this level by getting your token balance to 0.

## Solution

First we approve the `Hack` contract to spend out tokens from the `NaughtCoin` contract. The we call the `attack` function and transfer all the coins to the `Hack` contract.
