# Turn off  parameter expansion in heredoc

Ref: [Bash Heredoc | Linuxize](https://linuxize.com/post/bash-heredoc/) 



Suppose you want to create a script that required the location of the script: 

```bash
#!/usr/bin/env sh
echo This script is located in $(dirname -- "$0")
echo Your current location is $(pwd)
```



the following will not work:

```
cat << EOF > myscript.sh
#!/usr/bin/env sh
echo This script is located in $(dirname -- "$0")
echo Your current location is $(pwd)
EOF

```

The above will give you:

```
#!/usr/bin/env sh
echo This script is located in .
echo Your current location is /Users/apollotang/Desktop/tmp
```

Notice that the shell executes `$(dirname "$0")` and `$(pwd)` in the body of the here-doc before generating the text.



To fix this you have to escape the dollor signs:

```
cat << EOF > myscript.sh
#!/usr/bin/env sh
echo This script is located in \$(dirname -- "\$0")
echo Your current location is \$(pwd)
EOF

```

A better way is to enclose the Heredoc's delimiter `EOF` with quotes:

```
cat << "EOF" > myscript.sh
#!/usr/bin/env sh
echo This script is located in $(dirname -- "$0")
echo Your current location is $(pwd)
EOF
```

When the delimiter is quoted, parameter expansion and command substitution will be suppressed. 

