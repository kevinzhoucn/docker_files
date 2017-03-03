FROM ubuntu:14.04
ARG DEBIAN_FRONTEND=noninteractive

MAINTAINER kevin.zhou "zzpf@163.com"

RUN mv /etc/apt/sources.list /etc/apt/sources.list_init
ADD file/sources.list /etc/apt/sources.list
RUN apt-get update && apt-get -y install curl wget

