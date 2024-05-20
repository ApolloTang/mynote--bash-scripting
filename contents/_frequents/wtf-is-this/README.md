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

