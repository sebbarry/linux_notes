#!/bin/bash

ls SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )" | while read line; do
if [[ $( echo $line | grep ".txt"$ ) ]]
    then
        echo $line | awk -F "." '{print $1;}' | { read value; mv $line ${value}.md; }
fi
done


