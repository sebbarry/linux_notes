This file overviews how to set GID's and UID's for files and directories: 

+------------------------------------------------+

Set UIDs: 
command: chmod 2000 <directory/file>
------S---

Set GIDs:
command: chmod 4000 <directory/file>
---S------

Set both: 
command: chmod ug-s <directory/file>

Set both: 
command: chmod 6000 <directory/file>

Sticky bit: (T at the end of a permission column) 
command: chmod 1000 <directory/file>

Set sticky bit, gid, and uid: 
command: chmod 7000 <directory/file>

Remove all permissions (including sticky bit and gid, uid):
command: chmod 000 <directory/file>








