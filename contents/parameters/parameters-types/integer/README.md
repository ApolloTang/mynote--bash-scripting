# Integer type in bash

code in notebook [here](./ipynb--integer-type/README.md)



Essentially, *Bash variables are character strings*, but depending on context, Bash permits arithmetic operations and comparisons on variables. The determining factor is whether the value of a variable contains only digits.  [ref](https://tldp.org/LDP/abs/html/untyped.html) 

For the most part, *bash* works with strings and parses strings into numbers dynamically when ~~performing arithmetic expansion~~ [ref](https://www.quora.com/How-would-you-convert-a-string-into-an-integer-in-Bash/answer/Jim-Dennis-1?ch=10&oid=1477743676688152&share=9a760be6&srid=ubFICC&target_type=answer) evaluate an [arithmetic expressions](https://web.archive.org/web/20230327003702/https://wiki.bash-hackers.org/syntax/arith_expr).  

So, to store an integer in a variable is the same as storing a string in a variable.  There is nothing extra you need to do. The arithmetic operation will work if the variable contains all digits: 

```bash
myNum2='2'
myNum3='3'
((result=myNum2+myNum3))   # arithmetic evaluation
gprintf "%s\n" $result 
```

*output:* 

```
5
```



## Arithmetic operation with mixed type variable

If the variable contains non digits Bash will evaluate it to `0`:

``` bash
myNum2='2'
myString3='three'
((resultMixType=myNum2+myNum2+myString3))
gprintf "%s\n" $resultMixType 

((valueOfmyString3=myString3))
gprintf "%s\n" $valueOfmyString3 
```

*output:* 

```
4
0
```



## Using `declare -i`

For defensive scripting, you could use `declare -i` to set the type of your variable to an integer.  For example, the following will lead to an error:

```bash
a=5; a+=2; echo "$a"; unset a
```

*output:* 

```
52
```

The above is a mistake because `a+=2` is performing string concatenation. The correction script should be:

```bash
a=5; ((a+=2)); echo "$a"; unset a
```

*output:* 

```
7
```

If we had used `declare -i` on variable `a`, the error would have been avoided:

```bash
declare -i a=5; a+=2; echo "$a"; unset a
```

*output:* 

```
7
```



## Reasign an integer declared variable with a string

If we reassign an integer declared variable with a string, it will be set to `0`


```bash
declare -i a=5; a=five; echo "$a"; unset a
```

*output:* 

```
0
```
