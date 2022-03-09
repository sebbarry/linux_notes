#!/bin/bash



#display theuid and username of the user executing this
#display if the user is the sebastianbarry user or not


#1. display the uid
username=${UID}
userid_totest='501'

echo $username



#2. only display if the uid does not match 1000. 
if [[ $username -ne $userid_totest ]]
then 
    echo "your userid does not match ${userid_totest}"
    exit 1
else 
    echo "your userid matches"
    exit 0
fi


#3. display the username
user_name=$(id -un)

if [[ "${?}" -ne 0 ]]
    echo "the id command did not execute successfully"
    exit 1
fi

echo "your username is ${user_name}"




#4. you can use a string tes conditional
user_nametotest='sebastianbarry'

if [[ $user_name == $user_nametotest ]]
then 
    echo "your username matches $user_name"
fi 



#5. test fo != for the string
if [[ $user_name != $user_nametotest ]]
then 
    echo "your username does not match"
    exit 1
fi

exit 0
