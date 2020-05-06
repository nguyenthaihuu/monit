#!/bin/sh

# Auto update
# yum update

# Install epel-release
yum -y install epel-release

# Install monit
yum -y install monit

# cp monitrc
rm -f /etc/monitrc
cp monitrc /etc/
chmod 0700 /etc/monitrc

# monit start
service monit start

# monit on
chkconfig monit on

# monit status
service monit status
