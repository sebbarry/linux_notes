This file overviews the NFS file system. 

+------------------------------------------------+

- The NFS stands for the network file system. 
- The architecture is relatively similar to the CFIS layout. 

1.
Start by setting up the client and host machine: 
command: dnf install -y nfs-utils


2.
**Before mounting the NFS file system on the client, we must make sure the host server is set up with NFS.
On the server:
command: systemctl start nfs-server


3.
Make a directory that we want to share with the network.


4.
First modify the file from the server: 

command: vi /etc/exports
"""
...
/<directory to export> <ip of client>(rw,no_root_squash) 
...
"""



5. To make sure a client is bound to a folder, check the exportfs file: 
command: exportfs -avr



6. Make a mount point directory on the client: 
command: mkdir /nfsshares



7. On the client, mount the file system locally: 
command: mount -t nfs <ip of server>:/<location of file system> <location of client mount folder>



8. To unmount a directory from the client: 
(make sure to be out of the directory)
command: umount <directory>




**9. To persist the mount point, edit the fstab file:

command: vi /etc/fstab
"""
...
<ip of shared server>:/<mount point of folder>     <directory of local mount>      nfs4        defaults    0   0
...
"""
command: mount -a


