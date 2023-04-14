# MagicNumber

## Challenge

To solve this level, you only need to provide the Ethernaut with a Solver, a contract that responds to whatIsTheMeaningOfLife() with the right number. The solver's code needs to be really tiny. Really reaaaaaallly tiny. Like freakin' really really itty-bitty tiny: 10 opcodes at most.

## Solution

We create a `Solver` contract. In the constructor we set the `bytecode` variable to store the bytecode of a contract that returns `42`. We use `assembly` to store the solver address.
