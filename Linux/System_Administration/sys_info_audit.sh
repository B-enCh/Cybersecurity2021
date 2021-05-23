#!/bin/bash

#Check if script was run as root. Exist if false

if [ $UID -ne 0 ]
then
	echo "Please run this script with sudo."
	exit
fi

output=$HOME/research/sys_info.txt
ip=$(ip addr | head -9 | tail -1)
execs=$(find /home -type f -perm 777 2> /dev/null)

#if directory exists, do nothing. If it doesn't exist, create it

if [ ! -d ~/research ]
     then
	mkdir ~/research
     fi

#Check for research directory. Create it if needed
if [ ! -d $HOME/research ]
then
	mkdir $HOME/research
fi

#Check for output file. CLear it if needed.

if [ -f $output ]
then
	rm $ouput
fi

##### WEEK 5 Activity : Useful Loops #####

files = ('/etc/passwd' '/etc/shadow' '/etc/hosts')

# check the permission on files
for file in ${files[@]}
    do
      ls -la $file >> $output
done

# Bonus One - For loop to check sudo abilities of each user

for user in $(ls /home);
  do
     sudo -lU $user
done

# Bonus Two

commands=('date' 'uname -a' 'hostname -s')


mkdir ~/research 2>/dev/null

echo "A Quick System Audit Script" > $ouput
date >> $ouput
echo "" >> $output
echo "Machine Type Info:" >> $output
echo $MACHTYPE >> $output
echo -e "Uname info: $(uname -a) \n" >> $ouput
echo -e "IP Info: "  >>$output
echo -e "$ip \n" >>$output
echo -e "Hostname: $(hostname -s) \n" >>$ouput
echo "DNS Servers: " >>$ouput
cat /etc/resolv.conf >>$ouput
echo -e "\nMemory Info:" >>$output
free >>$output
echo -e "\nCPU Info:" >> $ouput
lscpu | grep CPU >> $ouput
echo -e "\nDisk Usage:" >> $output
df -H | head -2 >> $ouput
echo -e "\nWho is logged in: \n $(who -a) \n" >> $ouput
echo -e "\nExec Files:" >> $ouput
find /home -type f -perm 777 >> $ouput
echo -e "\nTop 10 Processes" >> $ouput
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $ouput
