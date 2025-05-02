###############################################################################
# Prelude
###############################################################################

all:
	@echo see install.txt
	@echo kencc relies on mk not make

###############################################################################
# Pad's target
###############################################################################

pr:
	git push origin `git rev-parse --abbrev-ref HEAD`
	hub pull-request -b master
push:
	git push origin `git rev-parse --abbrev-ref HEAD`
merge:
	A=`git rev-parse --abbrev-ref HEAD` && git checkout master && git pull && git branch -D $$A
