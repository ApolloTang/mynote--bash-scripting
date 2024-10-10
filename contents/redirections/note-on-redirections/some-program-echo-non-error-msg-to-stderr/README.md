# Some output of successful execution is redirected to stderr

Some commands will execute successfully without error, but the result is direct to stderr; an example of this is the `java -version`.  If you try to save the output of stdout of this command to a file: 

```
java -version > version.txt
```

Nothing will be saved, and the version will still be directed to the terminal. To save the version to the file, you have to direct stderr to the file: 

```
java -version 2> version.txt
```

Sometimes, you just don't know where the author of the software has directed the output to. The best way to deal with this is to save both stdout and stderr:

```
java -version 1>version.txt 2>version.txt
```

You can also use short-hand:

```
java -version 1>version.txt 2>version.txt  # success and error output to the same file
java -version 1>version.txt 2>&1           # error output to the file where success output is stored
java -version &>version.txt                # success and error output to the same file
```

The above 3 statements are doing the same thing: direct both stdout and stderr to the same file.

See the accompanying notebook for this note here -->  [index.ipynb](ipynb--some-program-echo-non-error-msg-to-stderr/index.ipynb) 
