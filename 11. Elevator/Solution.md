# Elevator

## Challenge

This elevator won't let you reach the top of your building. Right?

## Solution

When calling the `goTo()` function from the `Elevator` contract we create a `Building` contract. We have to call the `isLastFloor()` function. The first time it should return `false` and the second `true`. That is why we create a uint called `count`;
