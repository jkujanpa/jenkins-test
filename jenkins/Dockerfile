FROM jenkins/jenkins:lts

## User root for installs
USER    root
COPY    init.groovy.d/ /usr/share/jenkins/ref/init.groovy.d/

## Drop back to the regular jenkins user
USER    jenkins
RUN /usr/local/bin/install-plugins.sh junit git git-client ssh-slaves github:1.29.0 workflow-aggregator:2.5

## Install plugins if found in the plugins.txt
#RUN     if [ -s /usr/share/jenkins/ref/plugins/plugins.txt ]; then /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins/plugins.txt; fi
