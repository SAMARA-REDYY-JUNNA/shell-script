#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "please run this script with root access."
    exit 1 #manually exit if error comes.
else
    echo "you are super user."
 fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "installation of mysql is FAILURE"
    exit 1
else
    echo "installations of mysql is success"  

dnf install git -y

if [ $? -ne 0 ]
then
    echo "installation of git is FAILURE"
    exit 1
else
    echo "installations of git is success"  
echo "is script running?"
fi

echo "is script proceeding?"