# Word Splitting

## What is Word Splitting?

Generally, when no quotes are used around a variable, the shell interpreter breaks it into separate fields at the delimiters. This process is called **(implicit) word splitting**.

During word splitting, Bash uses the character(s) specified in the `IFS` variable as delimiters.

Word splitting interprets multiple consecutive `IFS` characters within the variable's content as a single delimiter. Additionally, any leading and trailing `IFS` characters are trimmed.

Since you can modify the contents of the `IFS` variable, you can alter which characters constitute the delimiters. If the value of `IFS` is null, no word splitting occurs.

Read more about IFS [here](./word-splitting-and-ifs/README.md).

## Preventing Word Splitting

Often, we want to prevent Bash from performing word splitting on our variables (for example, when we want to preserve whitespace characters). To achieve this, simply enclose your variable in double quotes (see: [reference](https://unix.stackexchange.com/questions/131766/why-does-my-shell-script-choke-on-whitespace-or-other-special-characters)).

## Portability Considerations

Implicit word splitting is a feature found in all POSIX-compliant shells. More generally, this behavior is common to most `sh`-compatible shells ([ref](https://unix.stackexchange.com/a/419223/62821)).

:warning: However, be aware that **Zsh** is not an `sh`-compatible shell; it does not perform word splitting on unquoted variable substitutions by default. ([ref](https://unix.stackexchange.com/a/419223/62821))

In POSIX, word splitting is referred to as [field splitting](https://pubs.opengroup.org/onlinepubs/009695399/utilities/xcu_chap02.html#tag_02_06_05).
