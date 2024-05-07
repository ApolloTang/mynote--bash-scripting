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

```
my-list-file.sh 1> files-listed.txt 2>error.txt
```

## Case study: Some output of successful execution is redirected to stderr

- [Some output of successful execution is redirected to stderr](./some-successful-output-is-redirected-to-stderr/README.ipynb)


## Meaning of ampersand (&): 

The following 4 lines are doing the name thing:
```
java -version 1>java_version.txt 2>java_version.txt  # success and error output to the same file
java -version 1>java_version.txt 2>&1                # error output to the file where success output is store
java -version &>java_version.txt                     # success and error output to the same file
```