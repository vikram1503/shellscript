#! /bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
scriptname=$($0 | cut -d "." -f1)
logfile=/tmp/$scriptname-$timestamp.log

if [ $userid -ne 0]
then 
echo "you are not super user get root access"
exit 1
else 
echo "you are super user"
fi

for i in $@
do
echo "packages to install :$i"
dnf list installed $i &>>$logfile
if [ $? -eq 0 ]
then
echo "already installed ... skipping"
else
echo "$i not installed ... need to install"
fi 
done
