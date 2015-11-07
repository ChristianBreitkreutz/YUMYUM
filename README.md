# how to install YUMYUM on centos

## add user to sudo
  - `visudo`
  - `<YourUsername> ALL=(ALL) ALL`
  - `next to root ALL=(ALL) ALL`

## install ansible
  - `yum install epel-release.noarch`
  - `yum install ansible`

## fill in your data in
  - group_vars/all
    - git.yml

## trigger install
  - `ansible-playbook -i inventory.ini site.yml --ask-sudo-pass`
