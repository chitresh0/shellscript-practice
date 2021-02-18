#!/bin/bash
if [ $(whoami) == "root" ]
then
while true
do
case "$(curl -s --max-time 5 -I http://google.com | sed 's/^[^ ]*  *\([0-9]\).*/\1/; 1q')" in
  [23])  #echo "."
	  printf "."
	  ;;
  5) echo "The web proxy won't let us through"
	  exit
	  ;;
  *) echo "The network is down or very slow"
	  #sleep	3
	  service NetworkManager restart
	  ;;
esac
sleep 1
done
else
	echo "This script should be run with root previledge"
fi
