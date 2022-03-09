#!/bin/bash

# This script generates a list of random passwords


# a random number as a password

password=${RANDOM}

echo $password



# multiple random numbers appended

password2="${RANDOM}${RANDOM}${RANDOM}"

echo $password2



# use current tiem since unix time
password3=$(date +%s)
echo $password3



# use the nano seconds as a possible password
password4=$(date +%s%N)
echo $password4




# use a checksum (checksums add a cryptographic key to each file etc)
# a checksum is added as mutable key, to ensure whether a file has been corrupted 
#or not

echo $(date +%s | shasum)

# create a better password

password5=$(date +%s | shasum | head -c32)
echo $password5


# create an even better password
password6=$(date +%s${RANDOM} | shasum | head -c48)
echo $password6


#using fold for random characters
randomCharacters='!@#$%^&*()'
password7=$(date +%s${RANDOM} | shasum | fold -w1)
echo $password7 | fold -w1





testing
