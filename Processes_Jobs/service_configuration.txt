This file overviews how to start and stop services as well as configure how these services are run at boottime. Boottime services start in what is known as a target, or run level. This is an extension of other services files within this directory that also elaborate on the process.


- A service has a status of 'disabled' indicating that it will not run automatically when the server is rebooted. 
- Stopping an enabled service will only stop the service until the machine is rebooted. To make a service competely stop even when the system is rebooted, set the service to disabled status. 
- systemd is the process that manages all running services in the Linux environment.

+---------------------------------------------+


Start a service: 
command: systemctl start <service>


Show every file associated with a particular sercive and check status:
command: systemctl list-unit-files --type=service


Make sure a service starts when a server is rebooted:
command: systemctl get-default
command: systemctl list-dependencies
command: systemctl enable <service>

To make sure a service does not start when the system is reboot: 
command: systemctl disable <service>



+------------------------------------------------+



Targets or run levels:


Systemd manages all services and processes in Linux. To control and manage services and processes, it uses units. A unit represents and manages an individual service or process. A target-unit is the logical collection of other system units.



To get current default target:
command: systemctl get-default


Targets are stored in the library directory: 
directory: /lib/systemd/system

Target files end with a .target extension: 
command: ll | grep target

Dependencies needed for a target to use when loading are stored in: 
file(s): *.target.wants


Runlevels are linked to other targets: 
example: runlevel0.target -> poweroff.target
...

To check the current runlevel: 
command: runlevel
output: <currrunlevel> <default run level>

Change the current default target temporaly:
command: systemctl isolate <target>
example: systemctl isolate multi-user.target

Change the default target (this creates a symlink to the appropriate default target): 
command: systemctl set-default <target>



Good references:
- https://www.computernetworkingnotes.com/linux-tutorials/systemd-target-units-explained.html
- https://www.computernetworkingnotes.com/linux-tutorials/systemd-target-units-explained.html
