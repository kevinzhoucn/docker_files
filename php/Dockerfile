FROM ubuntu:14.04
ARG DEBIAN_FRONTEND=noninteractive

MAINTAINER kevin.zhou "zzpf@163.com"

RUN cp /etc/apt/sources.list /etc/apt/sources.list_init && sed -i s@/archive.ubuntu.com/@/mirrors.163.com/@g /etc/apt/sources.list
RUN apt-get clean && apt-get update && apt-get -y install curl language-pack-en-base

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

RUN apt-get -y install python-software-properties software-properties-common && \
    add-apt-repository ppa:ondrej/php && \
    add-apt-repository ppa:nginx/stable && \
    add-apt-repository ppa:git-core

RUN apt-get -y update && apt-get -y install nginx && \
    apt-get -y install php5.6 php5.6-gd php5.6-curl php5.6-intl php5.6-xml php5.6-mbstring php5.6-simplexml php5.6-sqlite3 php5.6-mysql zip &&\
    apt-get -y install git

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin -- filename=composer
RUN composer config -g repo.packageist composer https://packagist.phppcompoer.com

