# Fallout

## Challenge

Claim ownership of the contract below to complete this level.

## Solution

Solidity version `^0.6.0` calls the contructor with the name of the contract. The constructor in our case should be `function Fallout()`. But we see that there is a mistake and the contstructor name is `Fal1out`. The owner of the contract is set in this function. To beat the challenge we just call the `Fal1out` function.
