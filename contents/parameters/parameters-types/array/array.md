# Array in Bash

- Bash does not support multidimensional arrays
- Bash supports two different types of one-dimensional arrays:
    1. Indexed
    2. Associative

## Bash's Indexed Array

- use positive integer numbers as keys.
- indexes start at 0 (zero).
- indexes are not necessarily contiguous (it is sparse).
 
## Bash's Associative Array

- sometimes known as a "hash" or "dict".
- use arbitrary nonempty strings as keys.
- always unordered. (You can't count on them coming out in the same order you put them in.)