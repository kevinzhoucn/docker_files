FROM registry.cn-hangzhou.aliyuncs.com/yl/tomcat-maven:tomcat8.0.36-openjdk8-mvn3.3.9

MAINTAINER kevin.zhou "zzpf@163.com"

ENV PRODMGR_HOME /home/prodmgr

RUN rm -f /etc/apt/sources.list /etc/apt/sources.list.d/*
ADD file/sources.list /etc/apt/sources.list

RUN set -x \
    && apt-get clean && apt-get -y update && apt-get -y install vim

RUN useradd -d "$PRODMGR_HOME" -u 1000 -m -s /bin/bash prodmgr

VOLUME /home/prodmgr
RUN chown -R prodmgr "$PRODMGR_HOME"

# for main web interface:
EXPOSE 8080
USER prodmgr
