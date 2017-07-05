FROM registry.cn-hangzhou.aliyuncs.com/zzpf/ubuntu14-zz:s163
ARG DEBIAN_FRONTEND=noninteractive

MAINTAINER kevin.zhou "zzpf@163.com"

ENV NODE_VERSION 8.1.2

ADD opt/node-v$NODE_VERSION-linux-x64.tar.gz /opt/

# Link Nodejs
RUN \
    cd /opt && \
    mv node-v$NODE_VERSION-linux-x64 node && \
    ln -s /opt/node/bin/node /usr/local/bin/node && \
    ln -s /opt/node/bin/npm /usr/local/bin/npm

# Set the working directory
WORKDIR /src

EXPOSE 3000

CMD ["/bin/bash"]
