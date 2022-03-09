#!/bin/bash

#we can delete a user with userdel



#function random()  { 
#    cat <<EOF > file.sh 
#    #!/bin/bash
#    cat file.sh
#    exit 0
#    EOF
#}
#
#random
#exit 0

#we can find the login id's for and their ranges in /etc/login.defs


#here we delete a user and his/her files in the directory
#sudo userdel -r <user>


#this script deletes a user
#runa s root
if [[ $uid -ne 0 ]]
then 
    echo "Pleas run with sudo or as root." >&2
    exit 1
fi

USER=$1
userdel $USER

if [[ $? -ne 0 ]]
then 
    echo "The acount $USER was not deleted." >&2
    exit 1
fi

#tell the user the account was deleted 
echo "The account $USER was deleted"

