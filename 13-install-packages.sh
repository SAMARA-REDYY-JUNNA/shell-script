#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/ $SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[om"

VALIDATE(){
 if [ $1 -ne 0 ]
 then
    echo -e "$2..$R FAILURE $N"
    exit 1
  else
     echo -e "$2..$G SUCCESS $N"
   fi       
}

  if [ $USERID -ne 0 ]
  then
   echo "please run tis script with root access."
   eexit 1 #manually exit if error comes.
  else
    echo "you are super user"
  fi

  for i in $@
  do 
    echo "package to install: $!"
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then
     echo -e "$i already installed..$y SKIPPING $N"
    else
       dnf install $i -y &>>LOGFILE
       VALIDATE $? "installation of $i"
    fi
   done
      
 