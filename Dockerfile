FROM ubuntu:22.04

RUN apt-get update
RUN apt -y install build-essential
RUN apt -y install git 
RUN apt -y install --reinstall gcc-11 gcc-11-base libgcc-11-dev
RUN apt purge -y build-essential && apt -y autoremove
RUN apt -y install cmake 
RUN apt-get -y install valgrind
