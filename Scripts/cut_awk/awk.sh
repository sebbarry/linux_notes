#!/bin/bash

#awk
#by default the field sepeartor for awk is whitespace

                #print $<#> is just the common variable from the column on each lines we want to output from teh script.
awk -f 'DATA:' '{print $2}' <file>

             #OFS=<!@#$%^&*()...> is just the new delimiter we may want to use when outputting from the script.
awk -F ':' -v OFS=',' '{print $1, $3}' /etc/passwd


#this shows how we can also change the output string
#and add other values to it in the script
awk -F ':' '{print "UID: "$3 ";LOGIN: " $1}' /etc/passwd


#this prints out the second to last field
#the operations in the $() are what allow us to calculate field numbers through mathematical operations
awk -F ':' '{print $(NF - 1)}' /etc/passwd


awk '{print $1, $2}' lines  

#we can also awk character lenghts using substr
awk '{print substr($<#>, <first character index>, <second character index>)}' lines 


#print a particular line number
awk 'NF >= <linenumber> NF <= <linenumber> {print $<column>}' lines.txt

#read from standard input
cat <file> | awk -F ':' '{print $# ;}'
