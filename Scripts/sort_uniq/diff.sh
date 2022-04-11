#!/bin/bash

diff filea.txt <(cat file2.txt)

#anything in the <() subshell can be a command or some other sequence of events. It sends to output of teh subshell upstream to the first diff [] command.
