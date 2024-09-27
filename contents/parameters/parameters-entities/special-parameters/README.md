# Special Parameters

The shell treats several parameters specially. These parameters use single special characters as their name: `#`, `*`, `@`, etc.

You can only read these parameters; assignment to them is not allowed.

We can group these special parameters into their functions:

1. positional parameter related: `#`, `*`, `@`
2. optional flags related: `-`
3. process related: `$`, `!`
4. exit status related: `?`
5. other: `0`

Ref: 

[Special Parameters (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Special-Parameters.html#Special-Parameters) 

[BashGuide/Parameters - Greg's Wiki](https://mywiki.wooledge.org/BashGuide/Parameters) 



---



## 1. Positional parameter related

`#`, `*`, and `@` are related to the positional parameters. Recall that the positional parameters use  [natural number](https://en.wikipedia.org/wiki/Natural_number) as their name, and they receive their value from the shell's arguments when a shell is invoked.

`$#` expands to the cardinal of the positional parameters the shell is invoked with.

`$*` and `$@` are the [mass-expanding positional parameters](https://web.archive.org/web/20230403055152/https://wiki.bash-hackers.org/scripting/posparams#mass_usage); they both expand to all the words of all the positional parameters. 

link to details of mass-expanding positional parameters (`$*` and `$@`) [§here](./mass-expanding-positional-parameters/README.md) 


---


