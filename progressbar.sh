#!/bin/bash

# #ls
# echo -ne '#####                     (33%)\r'
# sleep 1
# #pwd
# echo -ne '#############             (66%)\r'
# sleep 1
# echo -ne "hello\r"
# sleep 2
# echo -ne '#######################   (100%)\r'
# echo -ne '\n'


UPLINE=$(tput cuu1)
ERASELINE=$(tput el)
tput sc
echo "One Line"
echo "One Line"
echo "One Line"
echo "Two Lines"
echo "Two Lines"
echo "Two Lines"
col=$(tput cols)
tput cols
tput lines
sleep 5
tput rc
#tput cuu1
tput ed
#echo -ne "$UPLINE$ERASELINE$UPLINE$ERASELINE\r"
#tput reset
#tput cup $col 0
#tput clear
echo "Three Lines"
echo "Four Lines"
