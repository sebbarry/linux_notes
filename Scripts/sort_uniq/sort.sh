#!/bin/bash



#sort -n will sort values by numerical values


#du is a command to show the diskspace usage for each file
#disk usage
#du -h shows the file sizes in readalbe formats 

#we can sort the output of a df command 
# -u is the unique line format. This just removes all replicated values
##du -h | sort -u

##uniq -c #shows the amount of times the value was shown
sudo cat /var/log/messages | awk '{print $5}' | sort | uniq -c
