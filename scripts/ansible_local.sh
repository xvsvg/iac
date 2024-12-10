#!/bin/bash

cd ./ansible

echo "current directory is $PWD";

ANSIBLE_CONFIG=./ansible.cfg ansible-playbook -i inventory/local/hosts.ini playbooks/local/deploy.yml -vvvv