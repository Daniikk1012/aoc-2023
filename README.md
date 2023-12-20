# Solutions to Advent of Code 2023 in J

## How to run

To run the solutions, either use `<jconsole> <day>/<part>.ijs` or
`cat <day>/<part>.ijs | <jconsole>`. Replace `<jconsole>` with whatever the path
your J interpreter has. The working directory must be the directory where the
solutions are located, because the corresponding inputs lie alongside them.

For convenience, you may use script `run` from the root of the repository to run
the solutions, like so: `./run <jconsole> <day> <part>`.

## One-liners

Most solutions here are done in a single J expression, only using tacit function
definitions. That means no variables, or direct definitions were used. This
makes a fun challenge, but also results in unreadable code. I also try to golf
it at least to some degree, so unnecessary spaces are removed.

Sometimes though, tacit solutions are incredibly hard (But still not
impossible). In such cases, I may use a solution that uses direct definitions,
such solutions are listed in the "Bad solutions" section below.

## Standard library

Fun fact: the standard library is not required to run these solutions. This is
because I installed my J interpreter from AUR, and it only install the
interpreter itself, and I don't want to manually put the standard library where
it belongs, because who knows what it would break when the maintainer actually
decides to update PKGBUILD to install the standard library, when I already have
it there? So yeah, everything is based only on J's built-in features.

By the way, that is the reason I do not use a shebang; I have to pipe the file
into the interpreter, because the interpreter does not want to load the file due
to not being able to find the standard library.

## Bad solutions

The list of slow, long, or simply non-tacit solutions:

* Day 10, Part 1: WAY too slow and shouldn't work in some edgecases that do not
occur in the input data
* Day 10, Part 2: WAY too slow and WAY too long and complicated
* Day 12, Part 2: Had to use a non-tacit solution + added memoization only after
I found a hint on the Internet
* Day 14, Part 2: Actually good, but used a non-tacit solution
* Day 15, Part 2: Good, but not tacit
* Day 16, Part 2: VERY slow, and kinda long
* Day 18, Part 1: Not tacit
* Day 18, Part 2: VERY BEAUTIFUL, but not tacit, and shouldn't work in all cases
* Day 19, Part 2: Not tacit
* Day 20, Part 1: Not tacit, but not bad
* Day 21, Part 2: Awful + non-tacit + did not come up with the LCM approach, had
to google
