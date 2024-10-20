

# Word Splitting

# What is word-splitting

Generally, when no quotes are used on a variable, the shell interpreter will break it into separate fields at the delimiter. This process is called **(implicit) word-splitting**.

During word-splitting, Bash uses the character specified in an IFS variable as a delimiter. The leading and trailing `IFS` characters in the content of the variable will be trimmed, and multiple consecutive `IFS` characters will be interpreted as a single delimiter.

If the value of `IFS` is null, no word splitting occurs.


## Preventing word-splitting

If you want to prevent Bash from performing word-splitting on your variable, put your variable in double-quote (see: [reference](https://unix.stackexchange.com/questions/131766/why-does-my-shell-script-choke-on-whitespace-or-other-special-characters)).


## Portability concern

Implicit word-splitting is something that all POSIX-compliant shells do, and more generally, all sh shells ([ref](https://unix.stackexchange.com/a/419223/62821)).

In POSIX, word-splitting is called [field splitting](https://pubs.opengroup.org/onlinepubs/009695399/utilities/xcu_chap02.html#tag_02_06_05). 

:warning: Zsh is not a sh-compatible shell; it doesn't perform word splitting on unquoted variable substitutions. ([ref](https://unix.stackexchange.com/a/419223/62821))
