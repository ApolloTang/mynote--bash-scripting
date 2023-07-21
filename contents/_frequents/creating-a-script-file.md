

To create a script file, paste the following into terminal:

```
cat << "EOF" > myscript.sh
#!/usr/bin/env sh
location=$(dirname -- "$0")
script_file_name=$(basename $0)

echo This script is located in $location
echo The name of script file is $script_file_name
echo Your current location is $(pwd)
EOF
chmod 744 myscript.sh

```

