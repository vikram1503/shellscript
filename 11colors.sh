#! /bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
scriptname=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$scriptname-$timestamp.log
r="\e[31m"
g="\e[32m"
n="\e[0m"
echo "script started executing at:$timestamp"

  
validate(){

    if [ $1 -ne 0 ]
    
    then
    echo -e "$2 installation $r failed $n"
    exit 1
    else
    echo -e "$2 installation $g success $n"
    fi
}

if [ $userid -ne 0 ]
then
echo "pls run this script using root access"
exit 1
else
echo "you are super user"
fi

dnf install mysql -y &>>$logfile 
validate $? "installing mysql"

 dnf install git -y &>>$logfile 
validate $? "installing git"
 
dnf install dockerr -y &>>$logfile
validate $? "installing docker"