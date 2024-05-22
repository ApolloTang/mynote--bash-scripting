# Parameters

Ref: [Shell Parameters](https://www.gnu.org/software/bash/manual/bash.html#Shell-Parameters)



---

In Bash, parameters are entities that store values.

Parameters can be divided into 3 categoies:

- variables
- positional parameter
- special parameter

Ref:  [The difference between parameter and variable in bash - Linux Programming & Scripting - Linux Forum](https://forum.linuxconfig.org/t/the-difference-between-parameter-and-variable-in-bash/1009) 



## Variable 

The variables are the parameters that are defined by the user.  ([Ref geeksforgeeks.org](https://www.geeksforgeeks.org/shell-script-to-demonstrate-special-parameters-with-example/) )

Its name must be comprised solely of alphanumeric and underscore characters, and it may not begin with a numeral.  (Ref:  [Bash Reference Manual](https://www.gnu.org/software/bash/manual/html_node/Definitions.html#index-name) ).

A Variable has a value. In adition it may have attributes.







## Positional parameter

Positional parameter has name that are integer starting from 1.

They are assigned from the shell’s arguments when it is invoked

They may not be assigned to with assignment statements. but may be reassigned or set using the `set` and `shift` builtin command.

Ref:  [Positional Parameters (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Positional-Parameters.html) 

Note that `$0` is not a positional parameter (Ref:   [bash - Why $0 is not a positional parameter? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/412707/why-0-is-not-a-positional-parameter) ).



## Special parameter

These parameters may only be referenced; assignment to them is not allowed. Ref:  [Special Parameters (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Special-Parameters.html) 



