FROM ubuntu:18.04

RUN apt-get update --fix-missing
RUN yes | unminimize && \
    apt-get install -y \
    gdb \
    strace \
    nasm \
    make \
    gcc \
    vim \
    reptyr \
    tmux

RUN apt-get install -y \
    net-tools \
    bridge-utils \
    arping \
    ethtool

WORKDIR /app
