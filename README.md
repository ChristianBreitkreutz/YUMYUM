# how to install YUMYUM on centos

## call init.sh as root
it will add the user to the wheel group and install ansible
`. init.sh <username>`
  - `usermod -a -G wheel <username>`
  - `yum install epel-release.noarch`
  - `yum install ansible`

### hint
  - In centos 6 the wheel group is not activad so use: `visudo` and uncomment the %wheel role
  - You have to re-login the user
## fill in your data in
  - group_vars/all
    - git.yml

## trigger install
  - `ansible-playbook -i inventory.ini site.yml --ask-sudo-pass`
