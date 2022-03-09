#!/bin/bash

# display the uid and username of the user executing the script
# dispaly if the user is the root user or not


#display the uid
echo "Your UID is ${UID}" #UID is a special preset varialge

#display the username
#we can store the output of a command to a varialbe using the syntax below
username=$(id -un)
#or
#username2=`id -un`
echo "your username is: ${username}"


#this is 'sanity checking'
if [[ "${UID}" -eq 0 ]]
then 
    echo "you are root"
else 
    echo "you are not root"
fi


#display if the user is the root user or not
#the userid of root is alwasy root
