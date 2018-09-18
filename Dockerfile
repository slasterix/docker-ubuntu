FROM ubuntu:latest
LABEL maintainer="pellegrino.digennaro@gmail.com"

ARG DEBIAN_FRONTEND=noninteractive
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN apt-get install -y language-pack-en-base 
RUN locale-gen en_US.UTF-8

RUN \
    apt-get -y update && apt-get -y upgrade && \
    apt-get -y install apt-utils nano curl netcat wget telnet vim bzip2 locales && \
    update-locale && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*
