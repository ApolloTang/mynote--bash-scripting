Standard input is the keyboard.

Standard output is the success message

Standard error is the error message.







Output redirection operators:

```
>     # create/re-create a new file
>>    # append the content to file


```

There is no different between `>` and `1>` ( [Ref](https://unix.stackexchange.com/questions/270552/difference-between-1-and)) , so the following are identical:

```
command > filename  # Docs: Redirect stdout to a file.
command 1> filename # Docs: Redirect stdout to file "filename."
```



Input redirection opeartors

```
command <  # provide the  
```



To read: 

 [Five ways to use redirect operators in Bash | Enable Sysadmin](https://www.redhat.com/sysadmin/redirect-operators-bash) 
