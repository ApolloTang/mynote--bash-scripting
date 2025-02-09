
# Note on command's options 

## Handling end of option

Built-in command accepting options preceded by ‘-’ before positional arguments, for example :  

```
<build-in command> -options1 -options2 -option3 argument1 argument2
```

However, if your positional arguments also begin with a `-` this could be confusing for the command: 

```
<build-in command> -options1 -options2 -IAmNotAnOption
```

To solve this, the `--` symbol is used to signify the end of options:

```
<build-in command> [options] -- [arguments]
```

This is useful because it allows any subsequent arguments to be treated as positional parameters, even if they begin with a `-`:

```
<build-in command> -options1 -options2 -- -IAmNotAnOption
```



## Some build-in commands do not interpret `--` symbol

Some built-in commands does not undestand `--` symbol because they either don't take any arguement or simply do not accept option-like argument.

These commands don't take any arguement:

- `:`

- `true`
- `false`
- `test/[`

The following do not accept option-like argument: 

```
exit, logout, return, break, continue, let, shift
```

If you try to pass an option-like argument to one of these commands, it will likely result in an error or unexpected behavior.  Here’s a brief overview of how each handles arguments:

- **exit**: Expect an integer exit status.
- **logout**: This does not take any arguments; it simply logs the user out.
- **return**: Expect an integer return status.
- **break** and **continue**: These expect a numeric argument specifying the level of loop to break or continue.
- **let**: Evaluates arithmetic expressions.
- **shift**: Expects a numeric argument specifying the number of positional parameters to shift.







