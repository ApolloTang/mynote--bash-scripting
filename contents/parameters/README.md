# Parameters

Ref: [gnu.org](https://www.gnu.org/software/bash/manual/bash.html#Shell-Parameters)



---

In Bash, parameters are entities that store values.

Parameters can be divided into 3 categories:

- variables
- positional parameter
- special parameter





## Variable 

The variables are the parameters that are defined by the user.  (Ref: [geeksforgeeks.org](https://www.geeksforgeeks.org/shell-script-to-demonstrate-special-parameters-with-example/) )

Its name must be comprised solely of alphanumeric and underscore characters and may not begin with a numeral.  (Ref:  [gnu.org #index-name](https://www.gnu.org/software/bash/manual/html_node/Definitions.html#index-name) ).

A Variable can store a value, and it has attributes. The values are assigned with the **assignment statement**:

```
name=[value]
```
The attributes are assigned using the [declare](https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html#index-declare)  building command.


### environment variables

A subset of the variables are the **environment variables**, whose values are either inherited from the environment when the shell starts up or created by setting the export attribute (see subject: subshell).


## Positional parameter

The positional parameter uses positive integers as its name. These parameters receive their value from the shell’s arguments when the shell is invoked. You cannot assign this parameter using the assignment statements (`name=[value]`) similar to that in the shell variables. 

Although you cannot assign positional parameters with assignment statements, you can reassign them using the [set](https://www.gnu.org/software/bash/manual/bash.html#index-set) and [shift](https://www.gnu.org/software/bash/manual/bash.html#index-shift) built-in commands. See [How to set positional parameter](./positional-parameter/ipynb--how-to-set-positional-parameter/index.ipynb)


Note that `0` is not a positional parameter (Ref: [bash - Why $0 is not a positional parameter? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/412707/why-0-is-not-a-positional-parameter) ).

When a positional parameter consisting of more than a single digit is expanded, it must be enclosed in braces:
```
$1, $2, $3, ..., ${10}, ${11}
```
[§link-to-section-on-positional-parameter](./positional-parameters/README.md)

Ref:  [Positional Parameters (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Positional-Parameters.html) 


## Special parameter

These parameters may only be referenced; assignment to them is not allowed. Ref:  [Special Parameters (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Special-Parameters.html) 

[§link-to-sec](./special-parameters/README.md)


## Reference:

- [The difference between parameter and variable in bash, Linux Forum](https://forum.linuxconfig.org/t/the-difference-between-parameter-and-variable-in-bash/1009)
-  [Are variables like `$0` and `$1` shell/environment variables? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/400467/are-variables-like-0-and-1-shell-environment-variables#:~:text=In%20short%2C%20the%20main%20distinction,the%20command%20and%20they%20change.) 