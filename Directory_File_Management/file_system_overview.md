
This file overviews the process for making a file system and mounting it.
There is another file that ellaborates on this in the ../Mounting_File_System dir

+--------------------------------------------------------------------------------+



ext = extended file system

To create a filesystem: 
"""
mkfs -t <TYPE> <DEVICE ie /dev/<device>>
"""

mount a file system
"""
mount <DEVICE> <MOUNT POINT>
"""


mount shows physical file systems as well as virtual file systems.


to make a mount permanent we need to mount it on /etc/fstab file

to unmount a partition use umount <filesystem> 


/etc/fstab file:
there are 6 fields.
each of these columns as seperated by a space

1. device
2. mount point 
(where the mount point will be deployed)
3. file system type 
(same type used to make the file system type used in the mkfs command)
4. mount options
5. dump
6. fsck order


