# Implicit Type Conversion and Array Indexing Bug in MATLAB

This repository demonstrates an uncommon bug in MATLAB related to implicit type conversion and array indexing. The bug occurs when a function returns a scalar value, and the code attempts to assign a value to a specific index of this scalar using array indexing. This leads to unexpected results or errors.

## Bug Description

The `myFunction` in `bug.m` showcases this issue. When the input is greater than 10, it returns a scalar value; however, the line `result(1) = 100` attempts to assign a value to the first element of the scalar, unexpectedly modifying the output, even when a scalar was expected. 

## Solution

The `bugSolution.m` file provides a solution by explicitly checking the data type of the `result` before attempting array indexing.  It uses an `if` statement to ensure that array indexing is only applied when `result` is an array.  This ensures the expected behavior of the function and avoids the unexpected modification of scalar outputs.

## How to Reproduce

1. Clone this repository.
2. Open MATLAB and navigate to the directory.
3. Run `bug.m` and observe the output.
4. Run `bugSolution.m` and compare the output.
