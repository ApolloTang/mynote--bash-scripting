# Positional parameter related

`#`, `*`, and `@` are related to the positional parameters. Recall that the positional parameters use positive integers as their name, and they receive their value from the shell's arguments when a shell is invoked.

## `$#`: Cardinal of positional parameter

`$#` expands to the number of positional parameters (the cardinal) the shell is invoked with.

## `$*` and `$@`: Mass-expanding positional parameter

`$*` and `$@` are the [mass-expanding positional parameters](https://web.archive.org/web/20230403055152/https://wiki.bash-hackers.org/scripting/posparams#mass_usage); they both expand to all the words of all the positional parameters.

link to details of mass-expanding positional parameters (`$*` and `$@`) [§here](./mass-expanding-positional-parameters/README.md)

