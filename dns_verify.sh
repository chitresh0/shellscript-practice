#!/bin/bash

for i in $(cat /etc/hosts | grep '^10.244' | awk '{print $1}')
do
	nslookup $i
	echo
	sleep 2
done
