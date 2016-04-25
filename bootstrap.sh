#!/usr/bin/env bash

#########################################################
# Install Ansible
#
# - install specific version as we don't want our scripts
#   to regress based on an upstream ansible regression
#
#########################################################

# To get the latest ansible we would use ppa:ansible/ansible
apt-add-repository -y ppa:ansible/ansible-1.9
apt-get -y update
apt-get -y install ansible=1.9.6-1ppa~trusty

#####################################################
# AWS Control Modules
# @see http://docs.ansible.com/ansible/guide_aws.html
#####################################################

# The boto module is a AWS integration requirement as it is the Python 
# interface to AWS
apt-get -y install python-pip
pip install boto

###################################################################
# AWS EC2 External Inventory Script
# @see http://docs.ansible.com/ansible/intro_dynamic_inventory.html
###################################################################

# apt-get -y install wget
# wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.py
# mv ec2.py /vagrant
# chmod u+x /vagrant/ec2.py

######################################################################################
# Configure Ansible Behavioral Inventory Parameters
# @see http://docs.ansible.com/ansible/intro_inventory.html
# @see http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html
######################################################################################

cp /vagrant/hosts /etc/ansible/hosts
# copy ansible config with host_key_checking set to false
cp ansible.cfg /etc/ansible/ansible.cfg
