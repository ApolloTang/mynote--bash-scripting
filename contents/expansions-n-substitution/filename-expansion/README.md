# Filename expansion

After Bash finishes performing word splitting on the executable's arguments, it will look for **word patterns** to match the existing files and paths. Bash recognizes word patterns by searching for the following characters:

- `*` which is a pattern that matches multiple characters
- `?` which is a pattern that matches any single character.
- pair of brackets (`[` and `]`), which is a pattern that matches a single character according to the bracket expression rules.

When bash successfully matches the word patterns in the existing file or pathnames, the pattern is replaced by the matched file or path names. This operation is called **Filename expansion**.

Ref: 

[Filename Expansion (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Filename-Expansion.html) 

[Shell Command Language | 2.13.1 Patterns Matching a Single Character](https://pubs.opengroup.org/onlinepubs/007904975/utilities/xcu_chap02.html#tag_02_13) 
