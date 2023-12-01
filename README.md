# Solutions to Advent of Code 2023 in J

Inputs are located in `inputs` directory.

To run the solutions, either use `<jconsole> <n>.ijs` or
`cat <n>.ijs | <jconsole>`. Replace `<jconsole>` with whatever the path your J
interpreter has. The working directory must be the directory of the repository
itself, otherwise the inputs won't be found.

Fun fact: the standard library is not required to run these solutions. This is
because I installed my J interpreter from AUR, and it only install the
interpreter itself, and I don't want to manually put the standard library where
it belongs, because who knows what it would break when the maintainer actually
decides to update PKGBUILD to install the standard library, when I already have
it there? So yeah, everything is based only on J's built-in features.

By the way, that is the reason I do not use a shebang; I have to pipe the file
into the interpreter, because the interpreter does not want to load the file due
to not being able to find the standard library.
