#! /bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
scriptname=$($0 | cut -d "." -f1)
logfile=/tmp/$scriptname-$timestamp.log
r="\e[31m"
g="\e[32m"
y="\e[33m"
n="\e[0m"
if [ $userid -ne 0 ]
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
echo -e "$i already installed ... $y skipping $n"
else
echo "$i not installed ... need to install"
fi 
done
