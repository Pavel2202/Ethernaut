# Privacy

## Challenge

Unlock this contract to beat the level.

## Solution

To unlock the contract we need to change the `locked` variable to `false`. To do this we have to get the value of the last `bytes32` in the `data` array. First we have to determine in which slot it is located. The first variable is `bool public locked` which is `1 byte` and is stored in `slot 0`. This means that `slot 0` has `31 bytes` left. The second variable is `uint256 public ID` which is `32 bytes`. This means that we can't store in the first slot so we store it in `slot 1`. The third, fourth and fifth variable are `uint8` -> `1 byte`, `uint8` -> `1 byte` and `uint16` -> `2 bytes`. We can store all of them in `slot 2` and still have `29 bytes` left. Next we have `bytes32[3] private data`. Each of the elements in the array will have it's own slot. This means that `data[0]` will be in `slot 3`, `data[1]` -> `slot 4` and `data[2]` -> `slot 5`. To unlock we need to pass `bytes16` that will match `bytes16(data[2])`. To get the value of `data[2]`, we type `await web3.eth.getStorageAt(contract.address, 5)` in the browser console and get the first 16 elements of the returned value(except `0x`).
