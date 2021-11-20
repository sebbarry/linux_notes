# This file instructs us how to use the swap space on a Linux file system.

#### The Swap Space:
> The swap space is a small amount of space added from the harddisk to the main memory. This can help the system memory when full.

There are two approaches to adding Swap Spaces:
1. By using the logical volume that must be included in the volume group.
2. Adding a new partition.
3. Adding a new file system (undesirable because it can effect the system perf.).

# Swap Space ~ Method 1 (Adding swap space for a logical volume):

**Note** Make sure we have a logical volume (take note of the path). 
 
**In case we don't have a volume group:** 
> command: ```vgcreate -s 8m <vgroup name> <device path>```
  
**In case we don't have a logical volume attached:** 
> command: ```lvcreate --size <size> --name <name of lv> <name of VG>``` 
  
**Making the swap space out of a logical volume:** 
> command: ```mkswap /dev/<path to volume group>/<path to lv>```

**Note** This will make a swap space in size equivalent to the swap space size of the logical volume size.


## Free Command: 
command: ```free -m -h (shows the size of the swap area)``` 



## Adding a Swap Space to the System: 
command: ```swapon <logical volume path> (/dev/vg/lv)```
> (enables or disables a swap space)
> (this turns the swap space on for us to use)


## Viewing Swap Space Information: 
  
command: ```swapon -s```
  
command: ```cat /proc/swaps```
(including filename, type, size, used, priority)




## Making a Swap Persist Accross Reboots: 
> Changing the /etc/fstab file will also allow us to add the path of the swap file.
1. command: ```blkid``` 
2. grab the UUID value off the line.

*Edit the swap /etc/fstab file:* 
<pre> UUID="<>"   swap  swap    defaults    0   0 </pre>


## Removing a swapspace from the logical volume: 
command: ```swapoff <logical volume path>```

---

# Swap Space Method 2 ~ Adding a Swap Space from Disk Partitions:

## Converting a Disk Partition to a Swap Space:
> (this is assuming we have more than one partition on a disk drive)

### Example: 

```
/dev/sda       8:0    0     10G  0 disk
├─/dev/sda1    8:1    0    4.8G  0 part
└─/dev/sda2    8:2    0    5.2G  0 part
```

1. Delete the partitions from disk.
2. Recreate either/or both with a type of hexcode 82 (Linux Swap)

> (Type t to change the type of a partition. This is before writing changes using w)

3. command: ```partprobe </dev/partition1>```
4. command: ```partprobe </dev/partition2>``` 
(to validate the disk changes and inform the system)

5. make a swap path for each file

> command: ```mkswap /dev/sda1```

> command: ```mkswap /dev/sda2```

6. allocate each swap path to partition

> command: ```swapon /dev/sda1```

> command: ```swapon /dev/sda2```


7. to write these changes to disk upon reboot: 
> command: ```blkid```

(copy the UUID values from each type="swap" file)

> command: ```blkid | grep sda >> /etc/fstab```

8. change the fstab file in /etc/fstab: 
```
UUID=73f615e1-61ae-4605-a586-54cdbd42e1d8   swap    swap    defaults    0 0
UUID=a6d9f9d6-9ddd-4aca-8960-6b9b0a4c9ccb   swap    swap    defaults    0 0
```

Removing the Swap Space From the System: 
1. If present, delete the lines containing details on each partition from the /etc/fstab file.
> command: ```swapoff /dev/sda1```

> command: ```swapoff /dev/sda2```







