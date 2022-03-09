#!/bin/bash

FILETYPE=""
OUTPUT_DIRECTORY=""
VERBOSE="false"


function log() {
    local message=$@
    if [[ ! $VERBOSE == "false" ]]
    then
        echo $message
    fi
}



function usage() {
cat << EOF 
    +----------+
    | -v verbose on
    +----------+
    | -f <file type to exclude> 
    | Include the . at the beggining: .sh, .mp3, .jpg, etc.
    +----------+
    | -d <output directory> 
    +----------+
    | -h help
    +----------+
EOF
exit 0
}


while getopts vd:f: OPTION
do
    case ${OPTION} in
        v)
            VERBOSE='true'
            log 'Verbose is on'
            ;;
        d)
            OUTPUT_DIRECTORY="${OPTARG}" #this is the argument provided to the option
            ;;
        f)
            FILETYPE="${OPTARG}"
            ;;
        h)
            usage
            ;;
        ?)
            usage
            ;;
    esac
done

if [[ $FILETYPE == "" ]]
then 
    echo "include a file extension"
    exit 1
fi

if [[ ! $(echo $FILETYPE | grep "[$.]") ]]
then 
    echo "malformed file type"
    usage
    exit 1
fi


function exec() {
    find . ! -name "*${FILETYPE}" -type f | xargs awk -F '/' '{print $1;}' | xargs cp ${OUTPUT_DIRECTORY} 
}


exec

