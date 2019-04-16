#!/bin/sh
yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine -y

yum install -y yum-utils \
device-mapper-persistent-data \
lvm2
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo -y
yum install docker-ce docker-ce-cli containerd.io -y
systemctl start docker
