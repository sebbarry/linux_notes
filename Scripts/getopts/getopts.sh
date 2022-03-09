#!/bin/bash

#get opts allows us to parse input options.
#make a script that generates a password
#the user can set the password length 
#with -l and add a special character with -s
#vervose mode can be enable with -v.


function usage() {
    echo "Usage: ${0} [-vs] [-l LENGTH]" >&2
    echo 'Generate a random password.'
    echo ' -l LENGTH Specify the password length.'
    echo ' -s Append a special character to the password.'
    echo ' -v Increase verbosity.'
    exit 1
}

function log() {
    local MESSAGE=$@
    if [[ $VERBOSE = 'true' ]]
    then
        echo $MESSAGE
    fi
}

#set the default password lenngth
LENGTH=48

#this is where we can set global variables for us to use 
#by filing through the various different options passed in
               #l will take an option : s
while getopts hvl:s OPTION
do 
    case ${OPTION} in
        v) 
            VERBOSE='true'
            log 'Verbose is on'
            ;;
        l)
            LENGTH="${OPTARG}" #this is the argument provided to the option 
            ;;
        s)
            USE_SPECIAL_CHARACTER='true'
            ;;
        h)
            usage
            ;;
        ?)
            exit 0
            ;;
    esac
done

###start of the script post options

#inspect OPTIND
echo "OPTIND: ${OPTIND}"

#remove the options while leaving the remaining arguments
shift "$( OPTIND - 1 )" 

if [[ $# -gt 0 ]] 
then
    usage
fi

value=$(( 1 + 1 ))

log 'Generating a password'
PASSWORD=$(date +%s%N$RANDOM$RANDOM | shasum | head -c$LENGTH)
#append a special character with an if statement
if [[ $USE_SPECIAL_CHARACTER = 'true' ]]
then 
    log 'selecting a random special character.'
    SPECIAL_CHARACTER=$(echo '!@#$%^&*()-=+' | fold -w1 | shuf | head -c1)
    PASSWORD="${PASSWORD}${SPECIAL_CHARACTER}"
fi

log 'Done.'
log "Here is the password: "
echo $PASSWORD

