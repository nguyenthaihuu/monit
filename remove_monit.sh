#!/bin/sh

# Remove

# sudo apt-get remove monit
yum -y remove monit

# Remove monit telegram
rm -f /etc/telegramrc
rm -f /usr/local/bin/sendtelegram
rm -f /usr/local/bin/monit2telegram
