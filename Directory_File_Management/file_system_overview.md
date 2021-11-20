
# This file overviews the process for making a file system and mounting it.
*There is another file that ellaborates on this in the ../Mounting_File_System dir*


> ext = extended file system

### To create a filesystem: 

```
mkfs -t <file system type> <device to mount on ~ /dev/<device> >
```

### Mount a file system
```
mount <device> <mount point>
```

> ```mount``` shows physical file systems as well as virtual file systems.


### To make a mount permanent we need to mount it on:
```/etc/fstab``` file
### To unmount a partition: 
command: ```umount <filesystem>```


### The ```/etc/fstab``` file:
> There are 6 fields. Each of these columns as seperated by a tab.
> ```(1)    (2)   (3)   (4)   (5)   (6) ```
1. device
2. mount point 
(where the mount point will be deployed)
3. file system type 
(same type used to make the file system type used in the mkfs command)
4. mount options
5. dump
6. fsck order



