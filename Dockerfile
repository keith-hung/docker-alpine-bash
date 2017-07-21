FROM alpine:latest

MAINTAINER Keith Hung <kamael@hotmail.com.tw>

RUN apk add --update bash wget curl ca-certificates && rm -rf /var/cache/apk/*

# fix library dependencies, or 'not found' error may occur
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

