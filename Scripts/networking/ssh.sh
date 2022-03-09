#!/bin/bash

#create an sssh key gen value
ssh-keygen #this creates an ssh key for us

#this copys over the ssh key to the appropriate server
ssh-copy-id <servername>


#we can loop through a bunch of server names and run a command for each
#here are some examples
#1. 
for N in 1 2
do 
    ssh server$N hostname
done

#2.
for server in $(cat servers.txt) 
do
    ssh $server hostname
    ssh $server <command>
done

#seperate values by semicolons for single line commands
ssh <server> 'command; command;'

ssh server01 'ps -ef | head -3' #all commands are executed on the server

#ssh also exits with the exit status of the command executed on the server

#return any non 0 exit status from the ssh command
ssh <server> 'set -o pipefail; false | true'
