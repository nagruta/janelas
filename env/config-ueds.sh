#!/bin/sh
cd ansible
FILE_INVENTORY=ansible-inventory.yml
##PATH_PARENT_REPO_ANSIBLE=../../../../../a/ansible
##echo $PATH_PARENT_REPO_ANSIBLE
##FILE_PARENT_REPO_INVENTORY=$PATH_PARENT_REPO_ANSIBLE/$FILE_INVENTORY
##echo $FILE_PARENT_REPO_INVENTORY
##ls $FILE_PARENT_REPO_INVENTORY
##exit
##if [ -f $FILE_PARENT_REPO_INVENTORY ]
##then
##  FILE_INVENTORY=$FILE_PARENT_REPO_INVENTORY
##fi
ansible-playbook -i $FILE_INVENTORY -vv aplay-win-ueds.yml
