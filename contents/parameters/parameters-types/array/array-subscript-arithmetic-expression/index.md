# Arithmetic expression in array subscript

The syntax of Bash indexed array is `arrname[subscript]`, where `subscript` is any valid arithmetic expression:


```bash
myarray=(0 10 20 30 40 50)
index=1
echo "${myarray[index+1]}"
```

    20


There is no need to wrap the arithmetic expression in `$(( ))`.  Within the square brackets `[]` all syntax are intepreted in arithmetic evaluation context. 

While `$(( ))` is not required, using it can improve readability, especially in more complex expressions.


```bash
echo "${myarray[$((index+1))]}" # Wrapping in `$(( ))` is optional but valid
```

    20


And since all syntax are interpreted in arithmetic evaluation context, there is no need to prefix the parameter with `$`:


```bash
echo "${myarray[$index+1]}"  # Variable prefix `$` is not necessary in subscripts
```

    20

