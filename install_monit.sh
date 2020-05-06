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

# Or create the file configuration file
service monit start

# monit on
chkconfig monit on