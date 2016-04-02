#!/usr/bin/env bash

########################
# Install Ansible
########################

dnf -y install ansible

#####################################################
# AWS Control Modules
# @see http://docs.ansible.com/ansible/guide_aws.html
#####################################################

pip install boto
