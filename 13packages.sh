#! /bin/bash

userid=$(id -u)
if [ $userid -ne 0]
then 
echo "you are not super user get root access"
exit 1
else 
echo "you are super user"
fi

echo "all pacakages :$@"
