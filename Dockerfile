FROM ubuntu:14.04
ARG DEBIAN_FRONTEND=noninteractive

MAINTAINER kevin.zhou "zzpf@163.com"

RUN mv /etc/apt/sources.list /etc/apt/sources.list_init
ADD file/sources.list /etc/apt/sources.list
RUN apt-get update && apt-get -y install curl language-pack-en-base

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

RUN apt-get -y install python-software-properties software-properties-common && add-apt-repository ppa:ondrej/php 
RUN apt-get update && apt-get install php5.6
