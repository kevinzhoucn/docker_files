FROM ubuntu:14.04
ARG DEBIAN_FRONTEND=noninteractive

MAINTAINER kevin.zhou "zzpf@163.com"

RUN cp /etc/apt/sources.list /etc/apt/sources.list_init && sed -i s@/archive.ubuntu.com/@/mirrors.163.com/@g /etc/apt/sources.list

CMD ["/bin/bash"]