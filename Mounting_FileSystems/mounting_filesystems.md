# This file overlooks the process for mounting file systems.

- We typically start by creating partitions on a disk the usual way using fdisk. 
- Or we can create a logical volume and use that instead. 
- Once partitioned, we mount a file system for it.


**There are two types of file systems:** 
1. ext4
2. xfs





## Display Available Information About Block Devices: 
command: ```blkid```

> Checking if a partition contains a file system: 
```/dev/vda3: PARTUUID="..." ```

*(this does not contain a file system if there is no TYPE present or PARTUUID)*





## Creating a File System: 

command: ```mkfs -t <file system type> /dev/<path to partition orlvm>```

> or

command: ```mkfs.<type> /dev/<path to partition of lvm>```


## Labeling a File System (or partition): 

#### For a ext4:
command: ```tune2fs -L "<label name>" <partition/path> ```
#### For a xfs: 
command: ```xfs_admin -L "<label name>" <partition/path>```

## Mounting a File System: 

> We need to create directories in the /etc directory and change the fstab to reflect any changes.


command: ```cd /etc```
  
command: ```mkdir <mount point name>``` (create the directory path for the MP)
  
command: ```vim /etc/fstab```

Update the fsstab like so:
<pre>
LABEL or UUID                               Path            Type    ?        P#'s

UUID="6f104aac-bfcc-4b32-9884-0fde2ccd63c2" /etc/sda2_mp    ext4    defaults 0 1

</pre>

command: ```mount /etc/<mount point name>``` (mount the file system)






## To List File Systems: 
command: ```df -h``` 


## Unmounting A File System: 
command: ```umount <path to filesystem>```

