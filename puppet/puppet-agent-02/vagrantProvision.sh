#!/bin/bash

apt-get update
apt-get -y upgrade
apt-get -y install wget
wget https://apt.puppetlabs.com/puppet5-release-bionic.deb
dpkg -i puppet5-release-bionic.deb
apt-get update
apt-get -y install puppet-agent

echo '192.168.1.100    puppet' >> /etc/hosts