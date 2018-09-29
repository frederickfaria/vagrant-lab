#!/bin/bash

apt-get update
apt-get -y upgrade
apt-get -y install wget
wget https://apt.puppetlabs.com/puppet5-release-bionic.deb
dpkg -i puppet5-release-bionic.deb
apt-get update
apt-get -y install puppet-agent
update-alternatives --install /usr/bin/puppet puppet /opt/puppetlabs/bin/puppet 1

echo '192.168.1.100    puppet' >> /etc/hosts
rm -f puppet5-release-bionic.deb