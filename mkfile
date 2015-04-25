#                                              -*-makefile-*-

DIRS=\
	lib9\
	libbio\
	liblex\
	libmach\
	libregexp\
	libmath\
	mk\
	lex\
	yacc\
	cc\
	8a\
	8c\
	8l\
	5a\
	5c\
	5l\
	nm\
	ar\
	kprof\
	ksize\
	kstrip\
	acid\
    pcc\

# mkconfig is included at this point to allow it to override
# the preceding declarations if need be

<mkconfig

all:V:		all-$HOSTMODEL
clean:V:	clean-$HOSTMODEL
install:V:	install-$HOSTMODEL
installall:V:	installall-$HOSTMODEL
nuke:V:		nuke-$HOSTMODEL

cleandist:V: clean
	rm -f $ROOT/$OBJDIR/lib/lib*.a

nukedist:V: nuke
	rm -f $ROOT/$OBJDIR/bin/*.exe
	rm -f $ROOT/$OBJDIR/lib/lib*.a

&-Posix:QV:
	for j in $DIRS
	do
		echo "(cd $j; mk $MKFLAGS $stem)"
		(cd $j; mk $MKFLAGS $stem) || exit 1
	done

&-Plan9:QV:
	for (j in $DIRS)
	{
		echo '@{builtin cd' $j '; mk $MKFLAGS $stem}'
		@{builtin cd $j; mk $MKFLAGS $stem }
	}

# Convenience targets

Plan9-% plan9-%:V:
	mk 'SYSHOST=Plan9' 'OBJTYPE=386' $stem

Linux-% linux-%:V:
	mk 'SYSHOST=Linux' 'OBJTYPE=386' $stem
