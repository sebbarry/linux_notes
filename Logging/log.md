# Caching is used if the path starts with a hyphen: 


**caching helps with I/O**


## Example logging rules:

command: ```mail.info -/var/log/mail.info```

command: ```mail.warn -/var/log/mail.warn```

command: ```mail.err -/var/log/mail.err```



## logger:

command: ```logger -p mail.info -t mailtest "test"```

- This command above will shoot a log message with a .info severity level to the appropriate log file. The logger logs standard outputs with date/time/user and other bits of information 
- logrotate can be used to rotate, compress, move, mail log files. we can use this to improve storage space optimizations. 
- the logrotate.conf file contains metadata about logrotate configurations.

