###############################################################################
# Prelude
###############################################################################
# Note that my kencc relies on 'mk', instead of 'make', for the build
# infrastructure, so look more in './mkfile' if you want to adjust the build
# process.
# It relies on 'mk' but does not impose 'rc'. It can work also for 'sh'
# for better portability.
# The original kencc also had Makefiles I think.

# It's still convenient to have Makefile targets for non-critical
# tasks, since 'mk' is not a standard tool, hence this file.

###############################################################################
# Main targets
###############################################################################

all:
	@echo see install.txt
	@echo kencc relies on mk not make

build-docker:
	docker build -t "kencc" .

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

# See https://github.com/aryx/codemap and https://github.com/aryx/fork-efuns
# TODO? -filter semgrep?
visual:
	codemap -screen_size 3 -efuns_client efuns_client -emacs_client /dev/null .
