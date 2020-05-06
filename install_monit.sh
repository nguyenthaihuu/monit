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

# 
cd telegram

# Put `sendtelegram.sh` and `monit2telegram.sh` to `/usr/local/bin` and make them executable.
cp telegramrc /etc/telegramrc
cp sendtelegram.sh /usr/local/bin/sendtelegram
chmod +x /usr/local/bin/sendtelegram
cp monit2telegram.sh /usr/local/bin/monit2telegram
chmod +x /usr/local/bin/monit2telegram


# ```nginx
# check file nginx.pid with path /var/run/nginx.pid
#     if changed pid then exec "/usr/local/bin/monit2telegram"
# ```


