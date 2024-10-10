# Standard i/o and redirect operator

A Linux executable takes data from the standard input (**stdin**). If the execution is successful, the output is directed to standard out (**stdout**). If the execution fails, the output is directed to standard error (**stderr**).

The **stdin** can be the data from the keyboard, a file, or the output of another executable. The **stdout** or **stderr** can be the terminal or another executable.

To direct data between stdin, stdout, and stderr, we use the redirect operators:

```
> or 1>     output operator   
>>          append operator
<           input operator
2>          error operator
|           pipe operator
```

## File descriptor

In the above, the number that appears before `>` is called the file descriptor. it is used to identify Stdin, stdout and stderr:

```
0:  stdin
1:  stdout
2:  stderr
```

Note that there is no different between `>` and `1>` ( [Ref](https://unix.stackexchange.com/questions/270552/difference-between-1-and)) , so the following are identical:


```
command > filename  
command 1> filename 
```

## Separate stdout and stderr

You can save success output and error to separate file:

```
some_command 1> files-listed.txt 2>error.txt
```


## Some output of successful execution is redirected to stderr

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
