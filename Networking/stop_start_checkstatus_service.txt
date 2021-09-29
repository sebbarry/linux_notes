How to start, stop, and check the status of network services.

Check the status: 
command: systemctl status <service>
command: systemctl is-active <service>

Start the service: 
command: systemctl start <service>

Stop the service: 
command: systemctl stop <service> 


Enable a service: 
(this creates a symlink for the service in /etc/systemd/system/..)
command: systemctl enable <service>

Mask a service completely: (disable a service completely)
(creates a symlink to -> /dev/null)
command: systemctl mask <service>

Unmask a service: 
command: systemctl unmask <service>



