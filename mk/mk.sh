#!/bin/sh
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o arc.o arc.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o archive.o archive.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o bufblock.o bufblock.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o env.o env.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o file.o file.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o graph.o graph.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o job.o job.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o lex.o lex.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o main.o main.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o match.o match.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o mk.o mk.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o parse.o parse.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o Posix.o Posix.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o recipe.o recipe.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o rule.o rule.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o run.o run.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o rc.o rc.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o sh.o sh.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o shprint.o shprint.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o symtab.o symtab.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o var.o var.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o varsub.o varsub.c
cc -c -m32 -g -O -I/home/pad/kencc/Linux/386/include -I/home/pad/kencc/include -DLINUX_386 -o word.o word.c
cc -m32  -o o.out arc.o archive.o bufblock.o env.o file.o graph.o job.o lex.o main.o match.o mk.o parse.o Posix.o recipe.o rule.o run.o rc.o sh.o shprint.o symtab.o var.o varsub.o word.o /home/pad/kencc/Linux/386/lib/libregexp.a /home/pad/kencc/Linux/386/lib/libbio.a /home/pad/kencc/Linux/386/lib/lib9.a 
