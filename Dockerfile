FROM debian:jessie

MAINTAINER Lukáš Kříž <lukasojd@gmail.com>

RUN apt-get update

RUN apt-get install -y wget

ENV DOCKER_GEN_VERSION 0.7.3

RUN wget https://github.com/jwilder/docker-gen/releases/download/$DOCKER_GEN_VERSION/docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz \
 && tar -C /usr/local/bin -xvzf docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz \
&& rm /docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
