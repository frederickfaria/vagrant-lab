#!/bin/bash

ssh-keygen -t rsa

docker build -t ubuntu:custom .

docker-compose up -d

ssh-copy-id ubuntu@server01
ssh-copy-id ubuntu@server02
ssh-copy-id ubuntu@server03
ssh-copy-id ubuntu@server04

ansible all -i hosts -m ping -u ubuntu

ansible all -i hosts -m apt -a 'update-cache=yes' -u ubuntu -b -K

ansible-playbook -i hosts -l java-servers java-installation.yml -u ubuntu -K

java -version

ansible-playbook -i hosts -l nginx-servers nginx-installation.yml -u ubuntu -K

curl localhost