#!/bin/bash
sed -i '$d' /etc/crontab
echo "*/1 * * * * root python3 /root/ironfish-scripts/deposit.sh | tee -a /root/logfile.log" >> /etc/crontab
