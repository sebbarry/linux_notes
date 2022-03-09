#!/bin/bash



#cut at a specific delimiter. In this case, a comma in a csv file.
                                         #3 is the field value
echo "one,three,two,four" | cut -d ',' -f 3  

#read the local csv file
#this prints out the first column
cut -d ',' -f 1 people.csv


#grep regex and line matching
     #^ first word of the line starting with 'first'
                #$ last word of the line ending with 'last'
grep '^first,last$' people.csv


