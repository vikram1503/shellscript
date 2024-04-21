#! /bin/bash

userid=$(id -u)
if [ $userid -ne 0 ]
then
echo "pls run this script using root access"
else
echo "you are super user"
fi
dnf install mysql -y