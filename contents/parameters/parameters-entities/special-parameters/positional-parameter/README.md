# Positional parameter

**The naming of positional parameter**: 
The positional parameter uses positive integers (natural numbers) as its name:
```
$1, $2, $3, ...
```

Note that `0` is not a positional parameter (Ref: [bash - Why $0 is not a positional parameter? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/412707/why-0-is-not-a-positional-parameter) ).

When a positional parameter consisting of more than a single digit is expanded, it must be enclosed in braces:
```
$1, $2, $3, ..., ${10}, ${11}
```

**The value of positional parameter**

Positional parameters receive their value from the script’s or function's arguments when the script or function are invoked. You cannot assign this parameter using the assignment statements (`name=[value]`) similar to that in the shell's user defined variables. However, you can reassign them using the [set](https://www.gnu.org/software/bash/manual/bash.html#index-set) and [shift](https://www.gnu.org/software/bash/manual/bash.html#index-shift) built-in commands. See ipynb: [How to set positional parameter](./positional-parameter/ipynb--how-to-set-positional-parameter/index.ipynb)


**Reference:** [Positional Parameters (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Positional-Parameters.html) 


## TOC

[Jupyter notebook: How to set positional parameter](./ipynb--how-to-set-positional-parameter/index.ipynb)

[pdf handling-positional-parameter--bash-hacker-wiki](./pdf--handling-positional-parameter--bash-hacker-wiki/README.md)

## To Read:

https://unix.stackexchange.com/questions/378566/ways-to-set-positional-parameters-in-bash