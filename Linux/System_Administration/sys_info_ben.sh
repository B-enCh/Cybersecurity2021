#!/bin/bash

echo "This is Ben's Script"
echo "Today's date is $(date)"
echo "Today's time is $(timedatectl)"
echo "Machine Type Info:"
echo $MACHTYPE
# e is used to enable interpretation of backlash escapes

echo -e "Uname info: $(uname -a) \n"

# We can also use $(ip addr | grep inet | tail -2 | head -1| \n
echo -e "IP Info \n (hostname -I | awk '{print $1}') "

echo "Hostname: $(HOSTNAME -s)"
echo "DNS Servers: "
cat /etc/resolv.conf
echo "Memory Info:"
free
echo -e "\nCPU Info:"
# /proc/cpuinfo | grep model name | head -1
lscpu | grep CPU
echo -e "\nDisk Usage:"
df -H | head -2
echo -e "\nWho is logged in: \n $(who) \n"
echo "My ip address is $(hostname -I | awk '{print $1})"
