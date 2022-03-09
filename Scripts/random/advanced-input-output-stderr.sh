#!/bin/bash

# this script demonstrates io redirection

# redirect STDOUT to a file

#FILE="/tmp/data"
#head -n1 /etc/passwd > ${FILE}

#id -un > id


# redirect standard input
FILE="tmp.txt"
echo "hell world" > $FILE 
read LINE < $FILE
echo "line contains: $LINE"

# | is output of a command into another command 
# < symbol is the output of a file into a command


echo "new line" >> tmp.txt

#redirect stout to a file appending to afile
echo "$RANDOM $RANDOM" >> $FILE


#we can also redirect standard error through the 2> expression.
#redirecting the standard output to head.out and error to head.err
head -n1 /etc/passwd /etc/host /fakefile > head.out 2>> head.err    

#echo to stderr /dev/null (cat out to nothing)
#cat nonexitstent file
cat asdf.txt 2>/dev/null

#echo anything to stdout so the use doesn't see the log dump
cat file.sh &> /dev/null


