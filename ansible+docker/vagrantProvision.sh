#!/bin/bash

apt-get -y upgrade

######### INSTALLING ANSIBLE #########

apt-get -y install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get -y install ansible

######### INSTALLING SSH #########

apt-get -y install openssh-server

######### INSTALLING DOCKER #########

apt-get update
apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt-get update
apt-get -y install docker-ce
apt-get -y install docker-compose
usermod -aG docker vagrant

######### CONFIGURING HOSTS #########

echo '172.18.0.10    server01' >> /etc/hosts
echo '172.18.0.11    server02' >> /etc/hosts
echo '172.18.0.12    server03' >> /etc/hosts
echo '172.18.0.13    server04' >> /etc/hosts