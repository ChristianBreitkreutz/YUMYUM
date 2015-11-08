#!/bin/sh

if [ -n "$1" ] ;  then
    echo "add user '$1' in 'wheel' group ( allow sudo for $1)"
    usermod -a -G wheel $1
    echo "install ansible"
    yum update
    yum install epel-release.noarch
    yum install ansible
  else
    echo "please set <username>, like:"
    echo ". init.sh HansWurst"
fi
