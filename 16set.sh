#! /bin/bash
set -e
failure(){
    echo "failed at $1: $2" 
}
trap 'failure ${lineno} "bash_command"' ERR

userid=$(id -u)
if [ $userid -ne 0 ]
then
echo "pls run this script using root access"
exit 1
else
echo "you are super user"
fi
dnf install mysqledads -y

 dnf install git -y
 
 echo " is script proceeding"
