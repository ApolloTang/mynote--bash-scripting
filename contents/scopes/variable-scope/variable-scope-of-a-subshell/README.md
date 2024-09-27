

## :bomb: when piping into the while loop, a sub-shell is created to run the while loop.

see: https://stackoverflow.com/questions/124167/bash-variable-scope



## Scope in parentheses:

A command list embedded between `*parentheses*` runs as a subshell:

```
( command1; command2; command3; ... )
```



### To read: 

 [Subshells](https://tldp.org/LDP/abs/html/subshells.html#SUBSHELL)  **Example 21-1. Variable scope in a subshell** 