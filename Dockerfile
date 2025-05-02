# Build kencc on Ubuntu Linux.

FROM ubuntu:22.04
#alt: alpine:3.21

# Setup a basic C dev environment
RUN apt-get update # needed otherwise can't find any package
RUN apt-get install -y build-essential

WORKDIR /src

# Now let's build from source
COPY . .

RUN ./configure

RUN . ./env && ./bin/mk
