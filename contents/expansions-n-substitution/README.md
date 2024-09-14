# Expansions and substitution

There are eight kinds of expansion:  

1. brace  [[§link-to-sec](./brace-expansion/README.md)]
2. tilde
3. parameter  [[§link-to-sec](./parameter-n-variable-expansion/README.md)]
4. arithmetic
5. command substitution  [[§link-to-sec](./command-substitution//README.md)]
6. process substitution [[§link-to-sec](./process-substitution/README.md)]
7. word splitting (also called field splitting) [[§link-to-sec](./word-splitting-(field-expansion)/README.md)]
8. filename [[§link-to-sec](./filename-expansion/README.md)]

Ref: [Bash Reference Manual #Shell-Expansions](https://www.gnu.org/software/bash/manual/html_node/Shell-Expansions.html) 



## Order of expansion

The order of expansion are [[ref](https://www.gnu.org/software/bash/manual/html_node/Shell-Expansions.html)]:

1. brace
2. tilde
3. parameter
4. arithmetic
5. command substitution 
6. word splitting 
7. filename 

When available, process substitution is performed simultaneously with parameter, arithmetic, and  command substitution [[ref](https://www.gnu.org/software/bash/manual/html_node/Process-Substitution.html)].



## Syntax example:

1. Brace: 

```
{a..b}
{1..2..-1}
{a,sdfa,sdaf}
```

2. Tilde:

```
~/foo
~+/foo
~-/foo
```

3. Parameter:

```
${parameter}
```

4. Arithmetic:

```
$(( expression ))
```

5. Command Substitution

```
$(command)
`command`
```

6. Process substitution

```
<(list)
>(list)   
```

7. word splitting

```
<space>
<tab>
<newline>
```

8. File:

```
*
?
[...]
```

## to read: 

- [Shell Expansions (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Shell-Expansions.html)

-  [tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_04/Shell expansion](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_04.html) 