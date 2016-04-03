#!/usr/bin/env bash

########################
# Install Ansible
########################

dnf -y install ansible

#####################################################
# AWS Control Modules
# @see http://docs.ansible.com/ansible/guide_aws.html
#####################################################

# The boto module is a AWS integration requirement
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

dnf -y install wget
wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.py
mv ec2.py /vagrant


