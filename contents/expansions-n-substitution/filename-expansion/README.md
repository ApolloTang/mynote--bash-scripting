# Filename expansion

After Bash finishes performing word splitting on an executable's argument, it will look for **word patterns** that match the existing files and directories in a path. 
When the matches are successful, the pattern is expanded. The expansion will be a list of matched files and folders sorted alphabetically. This operation is called **Filename expansion.**

## Word patterns

Bash recognizes word patterns by searching for the following characters:

- Asterisk, `*`, which is a pattern that matches multiple characters
- Question mark, `?`, which is a pattern that matches any single character.
- A pair of brackets (`[` and `]`), which is a pattern that matches a single character according to the bracket expansion rules [[§link-to-sec](./bracket-expansion/README.md)].

:warning: Note that Bash only considers the above characters as word patterns if they are not double-quoted. (see [§note 1](#note-1)) 



## Notes:

<a name="note-1">[§note 1]</a> </br>
Recalled that double-quoted asterisk, `"*"`, is treated literally as a string without special meaning; however, if the asterisk is preceded by a dollar sign within a pair of double-quoted (namely, `"$*"`), Bash will expand them into a single string with all words of positional parameter separated by the first character of IFS variable. See illusion [[§link-illustration](./ipynb--double-quoted-asterisk/index.ipynb)]



## References: 

[Filename Expansion (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Filename-Expansion.html) 

[Shell Command Language | 2.13.1 Patterns Matching a Single Character](https://pubs.opengroup.org/onlinepubs/007904975/utilities/xcu_chap02.html#tag_02_13) 
