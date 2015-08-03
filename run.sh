#!/bin/bash

# Develop
echo "Installing development role"
apt-get install -y git 
git clone https://github.com/anishitani/ansible-java -b develop --depth 1 --progress --verbose /etc/ansible/roles/java

# Master
#ansible-galaxy install atoshio25.java

echo "Running ansible commmand"
ansible-playbook -i "localhost," -c local -vvvv playbook.yml 