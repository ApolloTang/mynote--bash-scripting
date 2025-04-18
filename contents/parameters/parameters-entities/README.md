# Parameters Entities

In Bash, the term parameters refers to the entities that store values.

Parameters can be rougly divided into 2 categories:

1. variables
3. special parameter


## 1. Variable

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


**Environment and shell variables**

A subset of the variables are the *environment and shell variables*. 

- An **environment variable** is a globally available, in a program and its child programs. 
- A **shell variable** is only available in the current shell.  [Ref: [bash - Environment variable vs Shell variable, what's the difference? - Ask Ubuntu](https://askubuntu.com/questions/26318/environment-variable-vs-shell-variable-whats-the-difference) ]

**See subject:** subshell.

**Refereces:** 
- [Special parameters and shell variables [Bash Hackers Wiki]](https://web.archive.org/web/20230315082027/https://wiki.bash-hackers.org/syntax/shellvars#shell_variables) 
- [POSIX Environment Variables](https://pubs.opengroup.org/onlinepubs/009695399/basedefs/xbd_chap08.html) 



## 2. Special Parameters

The shell treats several parameters specially.

These parameters are named with a single special symbol (or non-alphanumeric),  `?`, `#`, `*`, `@`, `!`, `-`, `$`, `_`, or pure whole numbers (`0`, `1`, `2`, ...`11`, `12`).  

They are called "special" because each of them have a specific, built-in purposes defined by the shell.

In general, special parameters provide information about the shell's state, the environment, script arguments, the results of commands, and other internal details. One important things to know about these parameter is these parameters are read only, you can not directly assignment or change their value.

We can roughly group these special parameters according to their functions:

| Symbol(s)                                     | High level description                                       | Link  to section                               |
| --------------------------------------------- | ------------------------------------------------------------ | ---------------------------------------------- |
| natural numbers: `1`, `2`, ...`11`, `12`, etc | individual positional parameter                              | [§link](./special-parameters/positional-parameter/README.md)        |
| `0`                                           | script name                                                  |                                                |
| `#`, `*`, `@`                                 | positional parameter related                                 | [§link](./special-parameters/positional-parameter-related/README.md) |
| `-`                                           | optional flags related                                       |                                                |
| `$`, `!`                                      | process related                                              |                                                |
| `?`                                           | exit status related                                          |                                                |
| `_`                                           | the last argument of the previous foreground command. Also holds the script name on startup |[§link](./special-parameters/underscore-parameter/README.md)                                               |

More reading:

[Special Parameters (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Special-Parameters.html#Special-Parameters)



## Reference:

-  [gnu.org](https://www.gnu.org/software/bash/manual/bash.html#Shell-Parameters)
-  Bash Hackers Wiki 
    - [Parameter [Bash Hackers Wiki]](https://web.archive.org/web/20230316102937/https://wiki.bash-hackers.org/dict/terms/parameter) 
    - [Parameter expansion [Bash Hackers Wiki]](https://web.archive.org/web/20230408142504/https://wiki.bash-hackers.org/syntax/pe) 
- [The difference between parameter and variable in bash, Linux Forum](https://forum.linuxconfig.org/t/the-difference-between-parameter-and-variable-in-bash/1009)
-  [Are variables like `$0` and `$1` shell/environment variables? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/400467/are-variables-like-0-and-1-shell-environment-variables#:~:text=In%20short%2C%20the%20main%20distinction,the%20command%20and%20they%20change.) 