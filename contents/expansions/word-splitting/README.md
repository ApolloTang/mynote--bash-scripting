

# Word Splitting

# What is word-splitting

Generally, when no quotes are used on a variable, the shell interpreter will break it into separate fields at the delimiter. This process is called **word-splitting**.

During word-splitting, Bash uses the character specified in an IFS variable as a delimiter. 
Also, during word-splitting, the `IFS` characters in the beginning and end of the variable are ignored, and the sequence of `IFS` characters is treated as a single delimiter.

If the value of `IFS` is null, no word splitting occurs.

