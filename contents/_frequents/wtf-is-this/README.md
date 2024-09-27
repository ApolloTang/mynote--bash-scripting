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