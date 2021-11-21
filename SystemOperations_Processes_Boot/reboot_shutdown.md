# This file overviews ways of rebooting the Linux system. 

## Rebooting the system.
> ex commands: ```reboot```, ```poweroff```, ```halt```.

command: ```shutdown -<check flags>```

## Shutdown with time:
commands: ```shutdown -r +15```
> (shuts down the system after 15 minutes)
> 
commands: ```shutdown -r 06:00```
> (shuts down the system at a particular time of day)

## Cancel shutdown time: 
command: ```shutdown -c```

## To show the scheduled shutdown times, locate the file: 
> (if the system has no shutdown configuration time scheduled, the file will not exist)

command: ```cat /run/systemd/shutdown/scheduled```


