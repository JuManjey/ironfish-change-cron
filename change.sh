#!/bin/bash
sed -i '$d' /etc/crontab
echo "*/1 * * * * root bash /root/ironfish-scripts/deposit.sh | tee -a /root/logfile.log" >> /etc/crontab
