# Vault

## Challenge

Unlock the vault to pass the level!

## Solution

To get the password we have to type `await web3.eth.getStorageAt(contract.address, 1)` in the browser console. The first parameter is the address of the contract and second is the slot we are looking for.
