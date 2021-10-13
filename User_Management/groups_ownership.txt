Group Creation and modification: 

groups are located in the /etc/groups file

- To list groups in the system: 
getent group

- To list the group(s) a user belongs to: 
groups <user>

- To create a group: 
groupadd <groupname>

- To add a user to a group: 
usermod -G <groupname> <user>

- To delete a group: 
groupdel <groupname>

- To delete a user from a group: 
gpasswd -d <user> <user groupname>

- To update a group configuration: 
command: groupadd --help
command: groupmod [flasgs] <groupname>

+----------------------------+

Ownership:

- To change the group ownership of a file: 
chgrp <group> <file>

- To change the ownership of a file: 
chown <user> <file>

- To change the ownership of a file:  
chown <user>:<group> <file>

+----------------------------+

Permissions: 

- To change the permission types of all files in a directory: 
chown <user>:<group> -R <directory>

- To change the permission types of a file using characters: 
For a user only: 
chmod u<-+><xrw> <file/directory>

For a group only: 
chmod g<-+><xrw> <file/directory>

For users not in the group only: 
chmod o<-+><xrw> <file/directory>

For all user, group, other users:
chmod ugo<+-><xrw> <file/directory>

- To change the permissions using bits: 
each # represents a byte.
000 = no permissions
001 = x permission
011 = wx permission
.. 
chmod <###> <file/directory>

We can also use the t, and s bit character.

chmod u+s <file> will give the same permission of the user that owns the
directory.

cmod +t <file> will prevent new users from renaming any file owned by 
users of the same group.

- Default permissions when creating files or directory:
umask <####> 
**To keep the changes for the new umask, change the umask definition in: 
/etc/bashrc
/etc/profile



