# The undrescore special parameter

At start up underscore special parameter hold the scsript name. 


file: $ ./content-of-underscore-demo.sh

```bash
#!/bin/bash

# Print the value of _ at script startup
echo "At script start up the value of _ is: $_"

: "foo"
echo "After executing the no-opt command': \"foo\"'', the value of _ is: $_"
```



output: 

```bash
$ ./content-of-underscore-demo.sh
At script start up the value of _ is: ./content-of-underscore-demo.sh
After executing the no-opt command': "foo"'', the value of _ is: foo
```

