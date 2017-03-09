FROM registry.cn-hangzhou.aliyuncs.com/yl/tomcat-maven:tomcat8.0.36-openjdk8-mvn3.3.9

MAINTAINER kevin.zhou "zzpf@163.com"

RUN rm -f /etc/apt/sources.list /etc/apt/sources.list.d/*
ADD file/sources.list /etc/apt/sources.list

RUN set -x \
    && apt-get clean && apt-get -y update && apt-get -y install vim
