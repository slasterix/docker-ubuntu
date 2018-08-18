FROM ubuntu:latest
LABEL maintainer="pellegrino.digennaro@gmail.com"

ARG DEBIAN_FRONTEND=noninteractive

RUN \
    apt-get -y update && apt-get -y upgrade && \
    apt-get -y install apt-utils nano curl netcat wget telnet vim bzip2 locales && \
    locale-gen en_GB.utf8 en_US.utf8 it_IT.utf8 && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*
