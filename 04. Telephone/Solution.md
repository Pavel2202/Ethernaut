# Telephone

## Challenge

Claim ownership of the contract below to complete this level.

## Solution

To become owner of the `Telephone` contract we have to attack the `changeOwner` function. We can become the owner if the `tx.origin` and `msg.sender` are not equal. To archive this we have to call this function through different contract. So we create `Hack` contract. In the `constructor` we call the `changeOwner` function with `msg.sender` as parameter. With this the challenge is done.
