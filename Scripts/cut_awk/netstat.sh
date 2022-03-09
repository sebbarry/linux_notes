#!/bin/bash

        #n = list by number
        #u = udp ports
        #t = tcp ports
        #l = listening ports (active)
netstat -nutl | grep -v '^Active'


#more on regular expressions
                     #E will allow for extended regular expressions, | is an example of how we can use the flag.
netstat -nutl | grep -Ev '^Active|^Proto'

