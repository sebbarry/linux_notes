#!/bin/bash

ls | / 
{ while read line
  do mv $line $(echo $line | sed "s/\.txt/.sh/g") 
  done 
}


