

# Variable Scope in a function

The default scope of all the variables is global.

```bash
#!/usr/bin/env sh

myfn1() {
  a=a
  echo inside $a
}

echo outside $a
myfn1
echo later $a
```

Results:





