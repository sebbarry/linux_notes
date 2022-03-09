#!/bin/bash

#find a word beggining with x and ending with s
grep 'x..s' <file>
#find a word taht starts at the beggining of the line
grep '^word' <file>
#case in-sensitive
grep -i 'word' <file>
#find words that do not start with word
grep -v -i 'word' <file>
#find words taht start at the end of a line
grep 'word$' <file>
#find only word on a line
grep '^word$' <file>
#find words that only contain the letter a
grep -E '(a)+' <file>

