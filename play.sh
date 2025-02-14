#!/bin/bash

ansible-playbook -i inventory -e component=mongodb main.yml  
ansible-playbook -i inventory -e component=catalogue main.yml
ansible-playbook -i inventory -e component=web main.yml
ansible-playbook -i inventory -e component=redis main.yml
ansible-playbook -i inventory -e component=user main.yml
ansible-playbook -i inventory -e component=cart main.yml
ansible-playbook -i inventory -e component=mysql main.yml
ansible-playbook -i inventory -e component=shipping main.yml
ansible-playbook -i inventory -e component=rabbitmq main.yml
ansible-playbook -i inventory -e component=payment main.yml