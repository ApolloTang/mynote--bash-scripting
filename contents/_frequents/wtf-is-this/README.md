## `$?`

`$?` Expands to the exit status of the most recently executed foreground pipeline.

[linux - What is the meaning of $? in a shell script? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/7704/what-is-the-meaning-of-in-a-shell-script#:~:text=%24%3F%20%2DThe%20exit%20status%20of,under%20which%20they%20are%20executing.) 



## `|| :`

The `||` is an “or” comparison operator.

The [`:`](http://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Builtins.html#index-_003a) is a null operator which does… Nothing. 

The `|| :` will force a zero exit status.

 [bash - What does || : mean in the context of a shell script? - Super User](https://superuser.com/questions/1022374/what-does-mean-in-the-context-of-a-shell-script) 



## `2>/dev/null `

Redirects `stderr` (`fd` 2) to the black hole (discards the output of the command).

[command line - What does 2>/dev/null mean? - Ask Ubuntu](https://askubuntu.com/a/350212/849866)


## `${ParameterName}`

This is parameter expansion. Same as `$ParameterName`. Adding curly brace for the purpose of telling bash where the name ends, for example:

```
echo "$name's current record is ${time}s."
```

Note: `${$n}` is a syntax error in bash, inside the braces, you can only have a variable name.

## `$(…)`

`$(…)` runs the command specified inside the parentheses in a subshell (i.e. in a separate process that inherits all settings such as variable values from the current shell), and gathers its output. [ref](https://stackoverflow.com/a/11065196/3136861)



## `>>>`

 [bash - What does <<< mean? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/80362/what-does-mean/80372#80372) 

 [5 Best Methods to Split Strings in Bash Scripts](https://linuxier.com/how-to-to-split-strings-in-bash-scripts/) 



## comma in bash script:

In Bash, Comma is used in:
-  brace expansion
-  separate commands in arithmetic operation
-  for statement
-  parameter expansion [case_modification](https://web.archive.org/web/20230326214838/https://wiki.bash-hackers.org/syntax/pe#case_modification)
-  filename

Notebook  [index.ipynb](ipynb--comma-in-bash/index.ipynb) 



Ref: 

[linux - What does the character , mean in bash? - Super User](https://superuser.com/questions/184466/what-does-the-character-mean-in-bash#:~:text=Commas%20can%20also%20be%20used,character%20this%20is%20a%20TEST)  

[bash - What do the commas in "${var,,}" mean? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/500274/what-do-the-commas-in-var-mean) 

[Start all of your commands with a comma](https://rhodesmill.org/brandon/2009/commands-with-comma/) 

[Shell Parameter Expansion (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html) 



## Parenthesis `()` in bash script:

Many situations in `bash` parenthesis combine with other characters they can be used as:

- command substitution: `$()`
- process substitution: `<()` and `>()`
- subshell: `(command)`
- arithmetic evaluation: `(())`
- function definition: `fun () { echo x; }`
- pattern list in glob: `?()`, `*()`, `+()`, `@()`, `!()` (*only if `extglob` is enable*)

Ref:

[array - Single parenthesis in bash variable assignment - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/217877/single-parenthesis-in-bash-variable-assignment/217878#217878) 



## Square Brackets `[]`in Bash

### Square Brackets as a command

As a command the square bracket is an alias to `test` built-in [ref in bash menual](https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Builtins.html#index-test) :

You can enter the following in your terminal  to see the following::
```
$ type [
[ is a shell builtin
```

### As part of the reserved word `[[..]]`

The token `[[` and `]]` is a [reserve word](https://www.gnu.org/software/bash/manual/bash.html#Reserved-Words). It is a syntax for the compound command use to enclose Bash Conditional Expressions (see: [double square brackets in Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html#index-_005b_005b)) 

To read:

[Using Square Brackets in Bash: Part 1 - Linux.com](https://www.linux.com/training-tutorials/using-square-brackets-bash-part-1/)  

[Using Square Brackets in Bash: Part 2 - Linux.com](https://www.linux.com/training-tutorials/using-square-brackets-bash-part-2/) 

 [scripting - What is the difference between double and single square brackets in bash? - Server Fault](https://serverfault.com/questions/52034/what-is-the-difference-between-double-and-single-square-brackets-in-bash) 
