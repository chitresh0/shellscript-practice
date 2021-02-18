#!/bin/bash
time1=0
time1=$(stat -c "%Y" /var/log/apache2/other_vhosts_access.log)
flag=0
echo "wait for new entry in log file"
while [ $flag == 0 ]
do
	time2=$(stat -c "%Y" /var/log/apache2/other_vhosts_access.log)
	sleep 5 
	echo "." | tr -d '\n'
	if [ $time2 -gt $time1 ]
	then
		echo "completed!"
		echo "file is written"
		echo "previous modification time for log file :- " $time1
		echo "new modification time for log file :- " $time2
		flag=1
	fi
done


