#!/bin/bash

ls -a | while read line; do
if [[ $( echo $line | grep ".txt"$ ) ]]
    then
        echo $line | awk -F ".txt" '{print $1;}' |  { read value; mv $line ${value}.md; }
fi
done

