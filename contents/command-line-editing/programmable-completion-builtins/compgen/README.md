# Compgen

**Reference:** ai(qwen2.5 coder)

`compgen` is a built-in command in Bash. It is used to generate lists of matching filenames or shell functions and variables. This command is useful for creating custom tab completion in scripts.

Here are some common uses of `compgen`:

List all commands:
  ```bash
  compgen -c
  ```


List all aliases:
  ```bash
  compgen -a
  ```


List all functions:
  ```bash
  compgen -A function
  ```

List all variables:
  ```bash
  compgen -v
  ```

List files matching a pattern:
  ```bash
  compgen -f "pa*"
  ```

list all built-in commands in Bash:

```bash
compgen -b
```





## What is the difference between the -c and -b flags

### Summary¶

-c: Lists all available commands, including those in PATH, aliases, and functions.

-b: Lists only the built-in commands provided by Bash including those inherited from Bourne Shell.


### `-c` Flag
- **Purpose**: Lists all commands that are available in the current shell environment.
- **What it includes**:
  - Commands found in directories listed in the `PATH` environment variable.
  - Aliases defined in the shell.
  - Functions defined in the shell.
- **Example**:
  ```bash
  compgen -c
  ```
  This will list all commands, including those found in your `PATH`, aliases, and functions.

### `-b` Flag
- **Purpose**: Lists all shell built-ins.
- **What it includes**:
  - Only the built-in commands provided by the Bash shell itself.
- **Example**:
  ```bash
  compgen -b
  ```
  This will list all the built-in commands available in Bash, such as `alias`, `break`, `cd`, `echo`, `eval`, etc.

