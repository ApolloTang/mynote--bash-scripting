# Operator

In Bash *operator* are writen with unquoted metacharacter. 

Metacharacter are `<space>`, `<tab>`,`<newline>`, `|`, `&`, `;`, `(`, `)`, `<`, or `>`. 

There are two kinds of operator:

1. Control operator
2. Redirection operator

## Control operator

A Control operator are a token that performs a **control function**. 

**Control function** is how commands are executed or connected to each other. Thus a control operator managing the flow of commands and their interaction.

Control operator can be a 

```
newline
``` 
or one of the following: 

```
|| 
&&
&
;
;;
;&
;;&
| 
|&
(
)
```

Also see: [POSIX definition for control operators](https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap03.html#tag_03_113)

The following operators are the **list operators**:
```
|| 
&&
&
;
```
They are called the **list operator** because they delimit list and dictact the interaction between each list.

A **list** is a sequence of one or more pipelines (See: [bash manual on list](https://www.gnu.org/software/bash/manual/html_node/Lists.html)).

Further more, the following operator:
```
newline
&
;
```
can be used to optionally terminate a string of list.


## Redirection operator

Also see: [POSIX definition of Redirection Operator](https://pubs.opengroup.org/onlinepubs/9699919799.2016edition/basedefs/V1_chap03.html#tag_03_318)

## References
 
[What are the shell's control and redirection operators? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/159513/what-are-the-shells-control-and-redirection-operators) 

["operator" in Definitions (Bash Reference Manual)](https://www.gnu.org/software/bash/manual/html_node/Definitions.html#index-operator_002c-shell) 

