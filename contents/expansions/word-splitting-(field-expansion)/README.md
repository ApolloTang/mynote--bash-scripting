

# Word Splitting or field expansion

# What is word-splitting

Generally, when no quotes are used on a variable, the shell interpreter will break it into separate fields at the delimiter. The process is called **word-splitting**.

The delimiter is the character specified in a variable called `IFS`.  In the content of a variable, a sequence of `IFS` characters is treated as a single delimiter. Also, the `IFS` characters at this content's beginning and end are ignored.

If the value of `IFS` is null, no word splitting occurs.

