#!/bin/bash

#parameter is used as a value provided within the command line
#arguments are provided as inputs from outside of the command line (user input)

# This script generates a random password foe each user specified on the comnand line

# display what the user typed on the command line
echo "YOu executed this command: ${0}"


#how many arguments they passed into the script
# usindg the # sign
numparams=$#
echo "You supplied $numparams number of parameters in the command line"

if [[ $numparams -lt 1 ]] #lt flag = less than
then
    echo "Usage: ${0} USER_NAME [USER_NAME] ..."
    exit 1
fi

#geenrate and displa a password for each parameter
for username in $@ # $@ is used to get all the arguments from the command line
do
    password=$(date +%s | shasum | head -c48)
    echo "$username: $password"
    sleep 1
done





