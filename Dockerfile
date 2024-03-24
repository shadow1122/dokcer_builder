FROM ubuntu:22.04

RUN apt-get update
RUN apt -y install build-essential
RUN apt -y install libmpfr-dev libgmp3-dev libmpc-dev
RUN apt -y install git 
RUN apt -y install g++
RUN apt -y install --reinstall gcc-11 gcc-11-base libgcc-11-dev

RUN apt update
RUN apt -y install software-properties-common
RUN add-apt-repository ppa:ubuntu-toolchain-r/test
RUN apt update
RUN apt -y install gcc-12 g++-12 gcc-13 g++-13

RUN apt purge -y build-essential && apt -y autoremove

RUN apt -y install cmake 
RUN apt-get -y install valgrind

RUN apt -y install nano

RUN mkdir -p //tmp/dump

ENV CPP="//tmp/host"
