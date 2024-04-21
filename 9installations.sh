#! /bin/bash

userid=$(id -u)
if [ $userid -ne 0 ]
then
echo "pls run this script using root access"
exit 1
else
echo "you are super user"
fi
dnf install mysqll -y
if [ $? -ne 0 ]
then 
echo "installation failed"
 exit 1
else
echo "installation success"
fi 