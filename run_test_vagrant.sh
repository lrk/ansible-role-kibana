#!/bin/bash

# Don't show commands
set +x
# Exit on any failure
set -e

if [ ! -d "/vagrant/tests/roles" ]
then
  mkdir -p /vagrant/tests/roles
fi

if [ ! -d "/vagrant/tests/roles/ansible-kibana" ]
then
  ln -s /vagrant /vagrant/tests/roles/ansible-kibana
fi

ansible-playbook -i tests/inventory --connection=local tests/vagranttest.yml $*
