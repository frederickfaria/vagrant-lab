#!/bin/bash

apt-get update
apt-get -y upgrade
apt-get -y install wget
wget https://apt.puppetlabs.com/puppet5-release-bionic.deb
dpkg -i puppet5-release-bionic.deb
apt-get update
apt-get -y install puppetserver
sed -i s/'-Xms2g -Xmx2g'/'-Xms512m -Xmx512m'/g /etc/default/puppetserver
echo "disable_warnings = deprecations" >> /etc/puppetlabs/puppet/puppet.conf
update-alternatives --install /usr/bin/puppet puppet /opt/puppetlabs/bin/puppet 1
rm -f puppet5-release-bionic.deb