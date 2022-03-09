#!/bin/bash
#this script shows the open networkports on a system
#use -4 as an argument to limit to tcpv4 ports.
netstat -nutl  | grep ':' | awk '{print $4}' | awk -F ':' '{print $NF}'
