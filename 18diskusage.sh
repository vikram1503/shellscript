#!/bin/bash

disk_usage=$(df -hT | grep xfs)
disk_threshold=6
MESSAGE=""

while IFS= read -r line
do
   usage=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
   folder=$(echo $line | awk -F " " '{print $Nf}')
if [ $usage -ge $disk_threshold ]
then
 MESSAGE+="$folder is more than $disk_threshold, current usage : $usage \n"
fi

done <<< $disk_usage
echo -e "Message: $MESSAGE"