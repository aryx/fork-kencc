# Build kencc on Ubuntu Linux.

FROM ubuntu:22.04
#alt: alpine:3.21

# Setup a basic C dev environment.
# We need gcc-multilib below for cc -m32 but also to be able to run the
# boostrapped Linux/386/bin/mk otherwise you get some weird
# 'sh: /bin/mk not found' error
RUN apt-get update # needed otherwise can't find any package
RUN apt-get install -y build-essential gcc-multilib

WORKDIR /src

# Now let's build from source
COPY . .

RUN ./configure

RUN . ./env && mk
