#!/bin/bash -eu

#rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
yum install -y epel-release
#rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
#yum -y install https://centos7.iuscommunity.org/ius-release.rpm
#rpm --import /etc/pki/rpm-gpg/IUS-COMMUNITY-GPG-KEY
yum install -y dkms
yum install -y curl git nano net-tools wget
#yum swap -y git git2u

## Docker
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce

systemctl enable docker
systemctl start docker

usermod -a -G docker vagrant