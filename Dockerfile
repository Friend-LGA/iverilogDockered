# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND="noninteractive"
ENV TZ="Europe/UTC"
RUN apt-get update && apt-get -y upgrade && apt-get install -y build-essential git make gcc bison flex gperf autoconf
RUN git clone --recursive https://github.com/steveicarus/iverilog.git
RUN cd ./iverilog && sh autoconf.sh
RUN cd ./iverilog && ./configure
RUN cd ./iverilog && make
RUN cd ./iverilog && make install
WORKDIR ./src
ENTRYPOINT ["iverilog"]
