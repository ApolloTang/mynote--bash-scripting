# mass-expanding positional parameters

`$*` and `$@` are the [mass-expanding positional parameters](https://web.archive.org/web/20230403055152/https://wiki.bash-hackers.org/scripting/posparams#mass_usage); they both expand to all the words of all the positional parameters.

Without double quote, both `$*` and `$@` are equivalent, they both expands to all the words of all the positional parameters.

When `$*` and `$@` are surrounded with a double quote (namely: `"$*"` and `"$@"`): `"$*"` expands all words of all positional parameters into a single string containing them all, separated by the first character of the IFS variable; whist `"$@"` expands all words of all positional parameters into a *list* of them all as individual words.

[§link-to-ipynb](./ipynb--special-paramerter-for-positional-para/README.ipynb)

### Ref:

[linux - What is the difference between $* and $​@ - Stack Overflow](https://stackoverflow.com/questions/22589032/what-is-the-difference-between-and) 

[What is the difference between $@ and $* in Bash? - Quora](https://www.quora.com/What-is-the-difference-between-and-in-Bash-1#:~:text=%E2%80%9C%24%40%E2%80%9D%20expands%20to%20a%20string,to%20a%20string%20per%20word.) 
