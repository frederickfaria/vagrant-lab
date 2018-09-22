FROM ubuntu:latest

RUN export TERM=xterm

RUN apt-get update
RUN apt-get -y install apt-utils
RUN apt-get -y install sudo
RUN apt-get -y install python-minimal python-simplejson
RUN apt-get -y install openssh-server
RUN apt-get -y install vim
RUN apt-get -y install curl

RUN sudo useradd -m -p $(openssl passwd -1 ubuntu) ubuntu -s /bin/bash

RUN usermod -aG sudo ubuntu

RUN echo 'root\nroot' |passwd root

RUN service ssh start

RUN mkdir -p /init

ADD init.sh /init

RUN chmod +x /init/init.sh

CMD /init/init.sh
