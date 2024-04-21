#! /bin/bash

userid=$(id -u)
validate(){
    if [ $1 -ne 0]
    then
    echo "$2 installation failed"
    exit 1
    else
    echo "$2 installation success"
    fi
}
if [ $userid -ne 0 ]
then
echo "pls run this script using root access"
exit 1
else
echo "you are super user"
fi
dnf install mysql -y
validate $? "installing mysql"
 dnf install git -y
validate $? "installing git"