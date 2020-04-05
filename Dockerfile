FROM ubuntu:18.04

RUN apt-get update --fix-missing
RUN yes | unminimize && \
    apt-get install -y \
    gdb \
    strace \
    make \
    gcc \
    vim \
    reptyr \
    tmux

WORKDIR /app
