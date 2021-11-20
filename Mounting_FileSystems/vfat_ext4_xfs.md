# This file explores further creation of vfat, xfs, and ext4 file systems. 


**Notes:**
- We cannot create 2 filesystems on a logical volume

#### Check the unmounted system: 
command: ```fsck <path to lv>```

#### Check for details on the filesystem: 
command: ```dumpe2fs /dev/<path to lv>```

#### Check for details on an xfs logical volume: 
command: ```xfs_info <path to logical volume>```

## To unmount a File System: 
1. comment out line that contains path to the filesystem in the /etc/fstab
2. save file
3. command: ```umount <path the logical volume>```

</br>

## Mounting a ext4 File System Onto a Logical Volume: 
> (this assumes we have a logical volume created)

1. create a file system: 
command: ```mkfs.ext4 /dev/<vg name>/<lv name>```
  
2. mount the file system: 
> (make a new folder in the /etc dir)

command:  ```cd ~/etc && mkdir <name>```

command: ```mount /dev/<vg name>/<lv name> </etc/<name of new folder1>```

### To make this a permanent addition: 

1. Copy the file path of the newly created mount point and add it to /etc/fstab
> (df -h will show the path)

<pre>
/dev/mapper/vg-lv_a  976M  2.6M  907M   1% /etc/mount
</pre>

<pre>
...
/dev/mapper/vg-lv_a /etc/mnt    ext4    defaults    1 2
</pre>

**Note:** 
> At the end of the line above:
> 
> 1. 1 means run first
> 
> 2. 2 means run after the root file system. 


***IMPORTANT***
use the below command to ensure that there is no issue with the newly added line to the file: 
command: ```mount -a```


## Mounting a xfs File System Onto a Logical Volume: 

> (this assumes we have an empty logical volume space)

command: ```mkfs.xfs <path to logical volume>```

command: ```mkdir /etc/<etcfolder2>```

command: ```mount <path to logical volume> <path to /etcfolder2>```

### Add the logical volume path and the type of the mount type to /etc/fstab:
<pre>
/dev/mapper/vg-lv_b /etc/etcfolder2    xfs    defaults    1 2
</pre>

command: ```mount -a (to check if the file has been changed correctly.)```


## To Repair a xfs File System Type:
> (this assumes that the file system is unmounted)
command: ```xfs_repair <path to logical volume path>```


## Mounting a vfat file system, follow the steps above.
command: ```mkfs.vfat ...```











