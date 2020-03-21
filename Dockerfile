FROM ubuntu:18.04

RUN apt-get update --fix-missing
RUN apt-get install -y \
    strace \
    vim \
    reptyr \
    tmux

WORKDIR /app
