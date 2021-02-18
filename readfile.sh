#! /bin/bash

input="/var/log/secure"

while IFS= read -r line
do
  echo "$line" | awk '{print $3}'
done < "$input"
