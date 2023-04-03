# CoinFlip

## Challenge

This is a coin flipping game where you need to build up your winning streak by guessing the outcome of a coin flip. To complete this level you'll need to use your psychic abilities to guess the correct outcome 10 times in a row.

## Solution

To guess the outcome of the coin flip we see that there is a calculation in the `CoinFlip` contract. We create a new contract called `Hack`. In the `_guess` method we paste the calculations done in the target contract. In the `flip` method we take the `guess` and call the target contract 10 times to complete the challenge.
