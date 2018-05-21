#!/bin/bash -eu

mkdir -p /var/jenkins_home
chown -R 1000 /var/jenkins_home

cd /home/vagrant/jenkins

docker build -t jenkins-test:1 .

#docker run -d -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home \ -v /var/run/docker.sock:/var/run/docker.sock \ --name jenkins \ jamtur01/jenkins cc130210491ee959a287f04b5e4c46340bbcb6a46971de15d3899699b7718656
#docker run -d -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home --name jenkins -e ENV_USER=admin -e ENV_PASSWD=admin --restart=always jenkins-test:1
docker run -d -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home --name jenkins --restart=always jenkins-test:1
