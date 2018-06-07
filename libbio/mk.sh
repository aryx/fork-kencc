#!/bin/sh
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 bbuffered.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 bfildes.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 bflush.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 bgetrune.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 bgetc.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 bgetd.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 binit.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 boffset.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 bprint.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 bvprint.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 bputrune.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 bputc.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 brdline.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 bread.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 bseek.c
cc -c -m32 -g -O -I$ROOT/Linux/386/include -I$ROOT/include -DLINUX_386 bwrite.c
ar ruvs $ROOT/Linux/386/lib/libbio.a bbuffered.o bfildes.o bflush.o bgetrune.o bgetc.o bgetd.o binit.o boffset.o bprint.o bvprint.o bputrune.o bputc.o brdline.o bread.o bseek.o bwrite.o
