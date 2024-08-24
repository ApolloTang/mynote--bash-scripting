# Parameters Entities



In Bash, parameters are entities that store values.

Parameters can be divided into 3 categories:

- variables
- positional parameter
- special parameter





## Variable 

The variables are the parameters that are defined by the user.  (Ref: [geeksforgeeks.org](https://www.geeksforgeeks.org/shell-script-to-demonstrate-special-parameters-with-example/) )

Its name must be comprised solely of alphanumeric and underscore characters and may not begin with a numeral (Ref:  [gnu.org #index-name](https://www.gnu.org/software/bash/manual/html_node/Definitions.html#index-name) ). This name can be match by Extended/Basic Regular Expressions:
```
[[:alpha:]_][[:alnum:]_]*
```

A Variable can store a value, and it has attributes. The values are assigned with the **assignment statement**:

```
name=[value]
```
The attributes are assigned using the [declare](https://www.gnu.org/software/bash/manual/html_node/Bash-Builtins.html#index-declare)  built-in command.

Once a variable is set, it exists and can only be unset by the `unset` built-in command.




### Environment and shell variables

A subset of the variables are the **environment and shell variables**. 

An environment variable is a globally available, in a program and its child programs. A shell variable is only available in the current shell.  [Ref: [bash - Environment variable vs Shell variable, what's the difference? - Ask Ubuntu](https://askubuntu.com/questions/26318/environment-variable-vs-shell-variable-whats-the-difference) ]

See subject: subshell.

Ref:  [Special parameters and shell variables [Bash Hackers Wiki]](https://web.archive.org/web/20230315082027/https://wiki.bash-hackers.org/syntax/shellvars#shell_variables) 





## Positional parameter

### The naming of positional parameter
The positional parameter uses positive integers as its name. 

Note that `0` is not a positional parameter (Ref: [bash - Why $0 is not a positional parameter? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/412707/why-0-is-not-a-positional-parameter) ).

When a positional parameter consisting of more than a single digit is expanded, it must be enclosed in braces:
```
$1, $2, $3, ..., ${10}, ${11}
```

### The value of positional parameter

Positional parameters receive their value from the script’s or function's arguments when the script or function are invoked. You cannot assign this parameter using the assignment statements (`name=[value]`) similar to that in the shell's user defined variables. However, you can reassign them using the [set](https://www.gnu.org/software/bash/manual/bash.html#index-set) and [shift](https://www.gnu.org/software/bash/manual/bash.html#index-shift) built-in commands. See [How to set positional parameter](./positional-parameter/ipynb--how-to-set-positional-parameter/index.ipynb)

[§link-to-section-on-positional-parameter](./positional-parameter/README.md)

Ref:  [Positional Parameters (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Positional-Parameters.html) 


## Special parameter

The shell treats several parameters specially. These parameters use single special characters as their name: #, *, @, etc.

You can only read these parameters; assignment to them is not allowed.

[§link-to-section-on-special-parameter](./special-parameters/README.md)

Ref: [Special Parameters (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Special-Parameters.html) 




## Reference:

-  [gnu.org](https://www.gnu.org/software/bash/manual/bash.html#Shell-Parameters)
-  [Parameter [Bash Hackers Wiki]](https://web.archive.org/web/20230316102937/https://wiki.bash-hackers.org/dict/terms/parameter) 
-  [Parameter expansion [Bash Hackers Wiki]](https://web.archive.org/web/20230408142504/https://wiki.bash-hackers.org/syntax/pe) 
- [The difference between parameter and variable in bash, Linux Forum](https://forum.linuxconfig.org/t/the-difference-between-parameter-and-variable-in-bash/1009)
-  [Are variables like `$0` and `$1` shell/environment variables? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/400467/are-variables-like-0-and-1-shell-environment-variables#:~:text=In%20short%2C%20the%20main%20distinction,the%20command%20and%20they%20change.) 