# Array in Bash

Bash only support one dimension arrays,  multidimensional arrays is not supported.

## Array type:

Bash supports two different types of one-dimensional arrays:

1. Indexed
2. Associative

### Indexed Array

- use whole numbers as keys (non negative integer: 0,1,2,3,...).
- indexes start at 0 (zero).
- indexes are not necessarily contiguous (it is sparse).

### Associative Array

- sometimes known as a "hash" or "dict".
- use arbitrary nonempty strings as keys.
- always unordered. (You can't count on them coming out in the same order you put them in.)



## Naming of Array

Any valid ordinary scalar (non-array) parameter name is also a valid array name:

```
[[:alpha:]_][[:alnum:]_]*
```



## Referencing member of array:

The overall syntax is

```
arrayName[subscript]
```

For *indexed* arrays, `subscript` is any valid *arithmetic expression*

For *associative* arrays, `subscript` is any nonempty string.

`subscripts` are expanded and substited with the following order:

1. parameter expansions
2. arithmetic expansions
3. command substitutions
4. process substitutions.

Within parameter expansions or as an argument to the `unset`  builtin, the special subscripts `*` and `@` is used to reference to all elements of arrays similar to that of the mass-expanding positional parameters.
