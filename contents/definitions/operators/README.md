# Operator

In Bash, *operator* is written with unquoted metacharacter. 

Metacharacter is the following character: `<space>`, `<tab>`,`<newline>`, `|`, `&`, `;`, `(`, `)`, `<`, or `>`. When a metacharacter is unquoted, it has a special meaning or function. In this discussion these metacharacters function as operator.

There are two kinds of operators:

1. Control operator
2. Redirection operator


## Control operator

A Control operator is a token that performs a **control function**. 

**Control function** is how commands are executed or connected. Thus a control operator managing the flow of commands and their interaction.

Bash's control operator can be one of the following: 

```
&
&&
(
)
;
;;
newline
|
||
;&
;;&
|&
```

*Side Note:* Except for the last three operators (`;&` `;;&` `|&`),  [POSIX definition for control operators](https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap03.html#tag_03_113) also has the same symbol for its operator.

### List operators

The following control operators are the **list operators**:

```
&
&&
;
||
```
They are called the **list operator** because they delimit **list**s. A **list** is a sequence of one or more pipelines (See: [bash manual on list](https://www.gnu.org/software/bash/manual/html_node/Lists.html)).

The list operators dictact the interaction between lists.

A string of list can be optionally terminated by the following operator:

```
&
;
newline
```


## Redirection operator

Also see: [POSIX definition of Redirection Operator](https://pubs.opengroup.org/onlinepubs/9699919799.2016edition/basedefs/V1_chap03.html#tag_03_318)







## References

[What are the shell's control and redirection operators? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/159513/what-are-the-shells-control-and-redirection-operators) 

["operator" in Definitions (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Definitions.html#index-operator_002c-shell) 

