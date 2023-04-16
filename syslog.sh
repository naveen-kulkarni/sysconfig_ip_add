#!/bin/bash
for i in `cat solarisservers`
do
ssh $i "
cp /etc/syslog.conf /etc/syslog.conf_11022020
sed 's/^[^#]*<IP ADDR>/#&/' /etc/syslog.conf > /etc/syslog.conf_bak;cp -p /etc/syslog.conf_bak /etc/syslog.conf "
done
