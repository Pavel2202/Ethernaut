# Fallback

## Challenge

Look carefully at the contract's code below.

You will beat this level if

1. you claim ownership of the contract
2. you reduce its balance to 0

## Solution

First we call the `contribute()` function with `msg.value` less than `0.001 ether`. Second we call the `receive()` function with any `msg.value`. Now we are the owner of the contract so we call the `withdraw()` function and complete the challenge.
