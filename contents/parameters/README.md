# Parameters

Ref: [gnu.org](https://www.gnu.org/software/bash/manual/bash.html#Shell-Parameters)



---

In Bash, parameters are entities that store values.

Parameters can be divided into 3 categories:

- variables
- positional parameter
- special parameter

Ref:  [The difference between parameter and variable in bash, Linux Forum](https://forum.linuxconfig.org/t/the-difference-between-parameter-and-variable-in-bash/1009) 



## Variable 

The variables are the parameters that are defined by the user.  (Ref: [geeksforgeeks.org](https://www.geeksforgeeks.org/shell-script-to-demonstrate-special-parameters-with-example/) )

Its name must be comprised solely of alphanumeric and underscore characters, and it may not begin with a numeral.  (Ref:  [gnu.org #index-name](https://www.gnu.org/software/bash/manual/html_node/Definitions.html#index-name) ).

A Variable, in addition to having a value. It may also also have attributes. The values are assigned with the assignment statement:

```
name=[value]
```
And the attributes are assigned using the [declare](https://www.gnu.org/software/bash/manual/bash.html#index-declare)  building command







## Positional parameter

The positional parameter uses integers as its name. The integer values start at 1. Unlike the variable mentioned above, assignment is forbidden with the assignment statements. These parameters receive their value from the shell’s arguments when it is invoked.  It may be reassigned or set using the [set](https://www.gnu.org/software/bash/manual/bash.html#index-set) and [shift](https://www.gnu.org/software/bash/manual/bash.html#index-shift) built-in commands.

Ref:  [Positional Parameters (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Positional-Parameters.html) 

Note that `$0` is not a positional parameter (Ref:   [bash - Why $0 is not a positional parameter? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/412707/why-0-is-not-a-positional-parameter) ).



## Special parameter

These parameters may only be referenced; assignment to them is not allowed. Ref:  [Special Parameters (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Special-Parameters.html) 

[§link-to-sec](./special-parameters/README.md)

