# Special Parameters

The shell treats several parameters specially.

They are called "special" because each of them has a specific, built-in purpose defined by the shell.

You can only read these parameters; assignment to them is not allowed.

These parameters are named use a single special symbol (non-alphanumeric character `?`, `#`, `*`, `@`, `!`, `-`, `$`, `_`) or numeric symbols (`0`, `1`, ...`11`, `12`).

I used to think they are "special" because their naming uses "special" symbol. But this understing was incorrect because I later found out that numeric symbols is also part of special parameters. In fact, they are called "special" because they have specific, built-in purposes defined by the shell. They provide information about the shell's state, the environment, script arguments, the results of commands, and other internal details.

We can roughly group these special parameters according to their functions:

| Symbol(s)              | Description                                                                 |
|------------------------|------------------------------------------------------------------------------|
| `1`, `2`, ...`11`, `12` | positional parameter (natural numbers)                                       |
| `0`                    | holds the script name                                                        |
| `#`, `*`, `@`          | positional parameter related                                                 |
| `-`                    | optional flags related                                                       |
| `$`, `!`               | process related                                                              |
| `?`                    | exit status related                                                          |
| `_`                    | the last argument of the previous foreground command. Also holds the script name on startup |

This format maintains your original groupings and descriptions in a single row each.

Ref: 

[Special Parameters (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Special-Parameters.html#Special-Parameters) 

[BashGuide/Parameters - Greg's Wiki](https://mywiki.wooledge.org/BashGuide/Parameters) 



---



## 1. Positional parameter related

`#`, `*`, and `@` are related to the positional parameters. Recall that the positional parameters use  [natural number](https://en.wikipedia.org/wiki/Natural_number) as their name, and they receive their value from the shell's arguments when a shell is invoked.

`$#` expands to the number of positional parameters (the cardinal) the shell is invoked with.

`$*` and `$@` are the [mass-expanding positional parameters](https://web.archive.org/web/20230403055152/https://wiki.bash-hackers.org/scripting/posparams#mass_usage); they both expand to all the words of all the positional parameters. 

link to details of mass-expanding positional parameters (`$*` and `$@`) [§here](./mass-expanding-positional-parameters/README.md) 


---


