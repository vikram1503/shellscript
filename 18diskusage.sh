#!/bin/bash

disk_usage=$(df -hT | grep xfs)
disk_threshold=6
message=""

while IFS= read -r line
do
   usage=$(echo $line | awk  -F " " '{print $6f}' | cut -d "%" -f1)
   folder=$(echo $line | awk -F " " '{print $Nf}')
if [ $usage -ge $disk_threshold ]
then
 message+= "$folder is more than $disk_threshold, current usage : $usage"
fi

done <<< $disk_usage
echo "message: $message"