# Gatekkeper One

## Challenge

Make it past the gatekeeper and register as an entrant to pass this level.

## Solution

To pass the first modifier we have to call the function `enter()` from another contract. To pass the second modifier we have to pass a custom gas which is divisible by `8191`. To pass the third modifier we have to do some calculations and pass the right `bytes8`.
