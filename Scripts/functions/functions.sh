#!/bin/bash

function backup_file() {
    local FILE=${1} #local variables declaration

    #make sure the file exists
    if [[ -f $FILE ]]; then 
        local BACKUP_FILE="/var/tmp/$(basename $FILE).$(date +%F-%N)"
        echo "Backing up file now"
        #overwriting a function to another directory
        cp -p $FILE $BACKUP_FILE
    else
        return 1
    fi
}


function log() {
    while true 
    do
        if [[ $# -gt 0 ]]
        then
            echo ${@}
            shift 
        else 
            echo "done"
            exit 0
        fi
    done
}

#this executes the function
log "a" "b" "c" "d"
