#!/bin/bash


#syntax convention
sed 's/<word>/<replacement>/' <textfile>

#ignore lower case
sed 's/<word>/<replacement>/i' <textfile>

#replace all global values where the sequence of characters exist.
sed 's/<word>/<replacement>/g' <textfile>

#replace the second occurance of the word in a file. 
sed 's/<word>/<replacement>/2' <textfile>

#make a new file from the alterations 
sed 's/<word>/<replacement>/2' <textfile> > newfile.*

#replace the existing file in place
sed -i 's/<word>/<replacement>/g' <textfile>

#replace the existing file in place with a backup of the original file
sed -i.bak 's/<word>/<replacement>/g' <textfile> 

#remove all comment lines
sed '/^#/d' <file>
#remove all blank lines
sed '/^$/d' <file>

#we can seperate two sed commands with semi colons
1. Using semicolons
sed '/^#/d ; /^$/d' <file>
2. Using -e flags between the '<regular expression>'
sed -e '/^#/d' -e '/^$/d' <file>

#use sed on an address (line) where the word exists
sed -e '<line number>s/<word>/<replacement>' <file>

#remove a line  (where the word exiss)
sed '/<word>/d' <textfile>

#remove a word where another word exists
sed '/<existing word>/ s/<replaceme>/<withthis>' <file> 

#change word on a particular number sequence of lines
sed '1,3 s/<replaceme>/<withthis>/' <file>

#change the word between two existing words on different lines
sed '/<firstword>/ ,/<secondword> s/<replaceme>/<withthis>' <file>


#delete a line on a particular line number:
sed -i '<#>i' <file>

#delete a range of lines:
sed -i '<#a>,<#b>d' <file>
