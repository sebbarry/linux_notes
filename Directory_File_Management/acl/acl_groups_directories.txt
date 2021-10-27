
This file overviews how to set up acl for 
- directories 
- groups.

Make use of default permissions. 

+------------------------------------------------------------------------------+

Groups: 

Make sure to restore to default permissions: 
command: setfacl --remove-all <file>

Set the group permission of a file: 
command: setfactl -m g:<groupname>:<rwx> <file>


Directories: 

This is typically done the same way, by pionting to a directory rather than a file.
command: setfacl -m g:<groupname>:<rwx> <directory>

recursively:

command: setfactl -R -m u:<user>:rwX <directory>
(capital X is for all subdirectories including files.)
(this however does not ensure that any new files will have the same permissions)



To set DEFAULT permissions for new files or directories: 
command: setfacl -m default:user:<user>:<rwx> <directory>





