#!/bin/bash

sudo puppet agent --test
sudo puppet resource service puppet ensure=running enable=true



# Production manifest = /etc/puppetlabs/code/environments/production/manifests/