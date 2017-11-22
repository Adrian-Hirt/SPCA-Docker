FROM debian:latest

MAINTAINER Adrian Hirt

RUN apt-get update && apt-get install -y nano vim build-essential gdb git subversion