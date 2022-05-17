#!/bin/bash
sed -i '$d' /etc/crontab
echo "*/3 * * * * root python3 /root/ironfish-autodeposit/autodeposit.py | tee -a /root/logfile.log" >> /etc/crontab
