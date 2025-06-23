# Build kencc on Ubuntu Linux.

FROM ubuntu:22.04 as build

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

FROM ubuntu:22.04 as run

RUN dpkg --add-architecture i386
RUN apt-get update # needed otherwise can't find any package
RUN apt-get install -y libc6:i386
# for rc
RUN apt-get install -y 9base
COPY --from=build /src/Linux/386/bin/ /usr/local/bin/

# test
RUN which rc
RUN which mk
RUN which 8a
