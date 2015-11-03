#!/bin/sh
read -p "Press [Enter] key to start boostrap process..."
yum update
yum install git python-pip python-yaml python-jinja2 aptitude

#common part
yum install ansible
cd ~
mkdir Code
cd Code
git clone git@github.com:ChrBrAteaPages/YUMYUM.git
cd YUMYUM
echo "Then run: cd ~/Code/YUMYUM; ansible-playbook desktop-provisioning.yaml -i inventories/inventory.ini --diff --ask-sudo-pass"