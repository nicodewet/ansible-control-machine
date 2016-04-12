#!/usr/bin/env bash

########################
# Install Ansible
########################

apt-get -y install ansible

#####################################################
# AWS Control Modules
# @see http://docs.ansible.com/ansible/guide_aws.html
#####################################################

# The boto module is a AWS integration requirement as it is the Python 
# interface to AWS
apt-get -y install python-pip
pip install boto

######################################
# Make sure we have the latest Ansible
######################################

pip install --upgrade ansible
ansible --version

###################################################################
# AWS EC2 External Inventory Script
# @see http://docs.ansible.com/ansible/intro_dynamic_inventory.html
###################################################################

apt-get -y install wget
wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.py
mv ec2.py /vagrant
chmod u+x /vagrant/ec2.py
