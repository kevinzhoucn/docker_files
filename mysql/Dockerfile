FROM ubuntu:14.04
ARG DEBIAN_FRONTEND=noninteractive

MAINTAINER kevin.zhou "zzpf@163.com"

RUN cp /etc/apt/sources.list /etc/apt/sources.list_init && sed -i s@/archive.ubuntu.com/@/mirrors.163.com/@g /etc/apt/sources.list
RUN apt-get clean && apt-get update && apt-get -y install curl language-pack-en-base

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

RUN apt-get -y install mysql-server
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

ADD file/startup.sh /opt/startup.sh
RUN chmod 755 /opt/startup.sh

EXPOSE 3306

CMD ["/bin/bash", "/opt/startup.sh"]
