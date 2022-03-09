#!/bin/bash

#we can append data to files using sudo with a tee command. 
#this is useful, and overcomes complications associated with sudo echo "" >
echo '10.9.8.11 server01' | sudo tee -a /etc/hosts

