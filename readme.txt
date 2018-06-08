Kencc is a highly portable C compiler suite, including supporting tools,
originally developed for Plan 9 from Bell Labs and later also used for
Inferno. It was originally developed by Ken Thompson, hence the name
kencc.

It targets x86 and ARM (the original kencc has more targets, but
this fork supports only x86 and ARM).

It is small and fast. It includes a stripped-down preprocessor.

Because all components are written portably, it is easy to use as a
cross-compiler (on Plan 9 itself, a cross-compiler is made simply by
compiling a target compiler with the host compiler; there are no extra
configuration files)

The suite is pleasant to port, partly because the distribution of
effort across the components is unusual.

The source code of the compiler suite is included in both Plan 9 and
Inferno distributions, but this provides an independent source that
might be used by other projects.

The project contains the source of the assemblers, compilers and
loaders; supporting commands such as ar, nm, size etc.; the Acid
debugger; supporting libraries; and the portable build environment,
including mk.

The only requirement to compile kencc is to have a working C compiler
and C standard library (e.g., gcc and the GNU libc).
