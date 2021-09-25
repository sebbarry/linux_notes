  
Booting the system into different targets.

Runlevels: 
A preset operating state for the system. It can be booted into one of these modes at a time.

runlevel 0: will halt and shutdown the system.
runlevel 1: will allow a single user to log into the system.
runlevel 2: will allow multiple users to log into the system. (the nfs system will not be loaded)
runlevel 3: will allow multiple users to log into the system. (the nfs will be loaded)
** 4: this is a user definable mode.
** 5: multi user mode with a GUI
** 6: reboots the system


Setting the system runlevels: 
command: init <#>

Setting the default runlevel: 
**Note, this creates a new symlink to the appropriate run level target
command: systemctl set-default <runlevel target>

**Note, to automatically switch over to the newly set run level target: 
command: systemctl isolate <runlevel target>

The runlevel of a system depends on which type of target we boot the system into.

Show the units and targets of the system.
command  systemctl list-units --type=target

Show the types of targets we can apply to --type=<>
command  systemctl -t help

**Note Systemctl
This is what allows us to control the systemd system and service manager.


Each run level target is associated with a link in  
/usr/lib/systemd/system/

**Note  we can also find other services listed in this directory.

To show the different runlevel links  
command  ll /usr/lib/systemd/system/ | grep "^l" | grep "runlevel"



 

  
Targets  
Taking a look at some service files in the /usr/lib/systemd/system/ dir, we can see that 
some services start after others have started.
ie. After=network.target sshd-keygen.service

We can also notice that some services require other services to be up and running to start 
ie. Wants=sshd-keygen.service

Some servcies might require this already existing service to exist for them to work  
ie. WantedBy=multi-user.target
 

To list all dependencies needed to run a specific target: 
This shows all dependencies and sub-dependencies of each dependency for a target to work.
command: systemctl list-dependencies <target>

**Note colorschemes: 
red: failed
white: inactive
green: active

