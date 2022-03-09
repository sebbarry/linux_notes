#!/bin/bash

# shows the type of a command
#type -a echo


#assign value to a vraible
word='script'

#echo the name (double quotes interpret wahts inside of them)

#combine the variable with hard coded text
echo "this is a $word"

#enother way of doing this is;
echo "this is ${word}"


#appending variables to the end of a outupt
echo "${word}ing is fun"


# create a new varialbe
ENDING='ed'

#combine the two variables
echo "this is ${word}${ENDING}."


#change the value stored int the ending varialbe (reassignment)
ENDING='ing'

echo "we change this now to: ${word}${ENDING}"
