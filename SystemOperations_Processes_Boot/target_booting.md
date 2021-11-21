  
# Booting the system into different targets.

## Runlevels: 
A preset operating state for the system. It can be booted into one of these modes at a time.
```
ID  Name                                   Description
0   Halt                                   Shuts down the system.
1   Single-user mode                       Mode for administrative tasks.
2   Multi-user mode                        Does not configure network interfaces and does not export networks services.
3   Multi-user mode with networking        Starts the system normally.
4   Not used/user-definable                For special purposes.
5   Start the system normally with         Same as runlevel 3 + display manager.
    appropriate display manager (with GUI)                                         
6   Reboot                                 Reboots the system.
```

### Setting the system runlevels: 
command: ```init <runlevel #>```

### Setting the default runlevel: 
command: ```systemctl set-default <runlevel target>```

> **Note** This creates a new symlink to the appropriate run level target


command: ```systemctl isolate <runlevel target>```
> **Note** To automatically switch over to the newly set run level target: 



## Show the units and targets of the system.
> *The runlevel of a system depends on which type of target we boot the system into.*

command: ```systemctl list-units --type=target```

> Show the types of targets we can apply to ```--type=<>```

command: ```systemctl -t help```

## Systemctl
This is what allows us to control the systemd system and service manager.


Each run level target is associated with a link in:  
```/usr/lib/systemd/system/```

**Note**  we can also find other services listed in this directory.

To show the different runlevel links  
command: ```ll /usr/lib/systemd/system/ | grep "^l" | grep "runlevel"```



 

  
## Targets  
Taking a look at some service files in the ```/usr/lib/systemd/system/``` dir, we can see that some services start after others have started.
```
ie. After=network.target sshd-keygen.service
```


We can also notice that some services require other services to be up and running to start 
```
ie. Wants=sshd-keygen.service
```

Some servcies might require this already existing service to exist for them to work  
```
ie. WantedBy=multi-user.target
```

### To list all dependencies needed to run a specific target: 
This shows all dependencies and sub-dependencies of each dependency for a target to work.
command: ```systemctl list-dependencies <target>```

**Note** colorschemes: 
```
red: failed
white: inactive
green: active
```
