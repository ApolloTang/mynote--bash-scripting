

## Difference between Glob and Regex

**Glob Patterns** are specifically designed for matching filenames and directory paths in shell environments for filename expansion. They are simpler and less expressive than regular expressions.

| **Glob**             | **Regex** | **Description**                                     |
| -------------------- | --------- | --------------------------------------------------- |
| `*`                  | `.*`      | Matches any number of characters (including zero).  |
| `?`                  | `.`       | Matches exactly one character.                      |
| `[abc]`              | `[abc]`   | Matches any one of the characters `a`, `b`, or `c`. |
| `[!abc]` or `[^abc]` | `[^abc]`  | Matches any character except `a`, `b`, or `c`.      |