#!/bin/sh
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 regcomp.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 regerror.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 regexec.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 regsub.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 regaux.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 rregexec.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 rregsub.c
ar ruvs /home/pad/kencc/Linux/386/lib/libregexp.a regcomp.o regerror.o regexec.o regsub.o regaux.o rregexec.o rregsub.o
