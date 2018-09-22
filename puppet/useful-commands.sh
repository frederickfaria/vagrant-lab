#!/bin/bash

/opt/puppetlabs/bin/puppet agent --test
sudo /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true

# Production manifest = /etc/puppetlabs/code/environments/production/manifests/