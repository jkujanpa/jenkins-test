#!/bin/bash -eu

yum install -y epel-release
yum install -y dkms
yum install -y curl git nano net-tools wget

yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce

systemctl enable docker
systemctl start docker

usermod -a -G docker vagrant

