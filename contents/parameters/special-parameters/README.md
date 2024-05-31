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

Without double quote, both `$*` and `$@` are equivalent, they both expands to all the words of all the positional parameters.

When `$*` and `$@` are surrounded with a double quote (namely: `"$*"` and `"$@"`): `"$*"` expands all words of all positional parameters into a single string containing them all, separated by the first character of the IFS variable; whist `"$@"` expands all words of all positional parameters into a *list* of them all as individual words.

### Ref:

[linux - What is the difference between $* and $​@ - Stack Overflow](https://stackoverflow.com/questions/22589032/what-is-the-difference-between-and) 

[What is the difference between $@ and $* in Bash? - Quora](https://www.quora.com/What-is-the-difference-between-and-in-Bash-1#:~:text=%E2%80%9C%24%40%E2%80%9D%20expands%20to%20a%20string,to%20a%20string%20per%20word.) 


---


