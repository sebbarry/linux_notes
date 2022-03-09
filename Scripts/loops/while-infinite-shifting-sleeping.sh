#!/bin/bash

# Demonstarte the use of shift and while looops. 
## sleep parameters, RANDOM

# Display the first three parameters

echo "parameter 1: ${1}"
echo "parameter 2: ${2}"
echo "parameter 3: ${3}"


# loop throughall the parameers

while [[ $# -gt 0 ]]
do
    echo "Number of parameters is: $#"
    echo "Parameter 1: $1"
    echo "Parameter 2: $2"
    echo "Parameter 3: $3"
    echo ""
    shift 
done

# to use shift: when we wnat a user to supply information, and there is one argument or data that can contain multiple words. 

# shift is also good to use when processing command line arguments: ie. -a --verbose
