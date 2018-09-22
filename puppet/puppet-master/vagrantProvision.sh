#!/bin/bash

apt-get update
apt-get -y upgrade
apt-get -y install wget
wget https://apt.puppetlabs.com/puppet5-release-bionic.deb
dpkg -i puppet5-release-bionic.deb
apt-get update
apt-get -y install puppetserver
sed -i s/'-Xms2g -Xmx2g'/'-Xms512m -Xmx512m'/g /etc/default/puppetserver
service puppetserver start