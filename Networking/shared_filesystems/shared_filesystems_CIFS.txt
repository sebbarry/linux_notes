This file overviews the CIFS (Common Internet File System) and how to set it up.

- The CIFS can be dedicated to the samba server. We need to have one server dedicated as the client and the other dedicated to the server (shared drive). Both use the same installation tools.

+-------------------------------------------------------+

1. Install the dnf server on both machines.
command: dnf install -y samba samba-client cifs-utils 


2. When done, start the servers: 
command: systemctl start smb
command: systemctl status rpcbind
command: systemctl start rpcbind


In the server machine: 

3. Make a directory in the root / directory of the server AND client: 
command: cd / && mkdir /<name of shareable directory>

4. Update the conf file: smb.conf.example and make sure to overwrite the smb.conf file with the updates.
(as an example)

"""

[global]
workgroup = MYGROUP
server string = <ipaddr of shared samba server>
hosts allow = 127. <client server addresses...> 
interfaces = <network card interfaces> <24 bit octet of samba server IP addr>. 
(eth0 is the network interface of the server)
(make sure to remove the last octet of the server network interface IP)

log file = /var/log/samba/log.%m
passdb backend = <user password included to mount..comment this out if issue.>
max log size = 5000
security = <name of samba user> 


[shared drive folder name in root dir /]
comment = /<name of shared dir>
browsable = yes
path = <path to shared dir name> 
public = yes
valid users = <valid user from client> 
write list = <valid user from client> 
writable = yes

"""


5. Test the config file and restart the smb server: 
command: testparm
command: systemctl restart smb

**If there's an issue with the config or restarting the service: 
Check the log files in the /var/log/samba/ dir.



6. Restart the smb bind server:
command: systemctl restart rpcbind


7. From the client machine, mount the /<name of shared> directory:
command: mount //<ip of shared server machine>/<shared server dir export> /<client directory> -t cifs -o username=<username>,password=<pass>

8. Optionally, we can add the above command to the fstab: 
command: vi /etc/fstab
Add to file: 
"""
...
//<ip_shared>/<mountfolder> /localmount cifs credentials=...    0   0
"""

- Save the file
- command: mount -a








