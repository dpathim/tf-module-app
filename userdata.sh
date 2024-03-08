#!/bin/bash

yum install ansible python3.11-pip.norch -y &>>/opt/userdata.log
ansible-pull -i localhost, -U https://github.com/dpathim/roboshop-ansible.git main.yml -e component=${component}  -e env=${env}&>>/opt/userdata.log