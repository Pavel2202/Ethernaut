# King

## Challenge

The contract below represents a very simple game: whoever sends it an amount of ether that is larger than the current prize becomes the new king. On such an event, the overthrown king gets paid the new prize, making a bit of ether in the process! As ponzi as it gets xD

Such a fun game. Your goal is to break it.

When you submit the instance back to the level, the level is going to reclaim kingship. You will beat the level if you can avoid such a self proclamation.

## Solution

To prevent someone overthrowing us from the kingship we have to make the `transfer` in `receive()` function fail. To do this we create new contract `Hack`. The `Hack` contract becomes the new king and when we don't have a `receive()` or `fallback()` the transfers to the contract will always fail.
