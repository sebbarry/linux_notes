# Listing, Creating, and Deleting Partitions of GPT Disk

> Some partitions are larger than others.
> The larger partitions are typically associated for use with file storage.
> Other partitions (one) will be dedicated to boot partitions. 
> Partitions take up disk space.

Partitions are held on: 
```/dev/<partition device><partition #>```

> (ie: /dev/vda1)
> 
> (ie: /dev/vda2)

1. Partitions are typically prefixed by vda or sda
2. Partitions are dividers that split up a disk into smaller chunks.

There are 3 types of partition manipulation techniques/programs we 
can use:
1. parted
2. gdisk
3. fdisk (most popular)



# Fdisk Commands (interface for manipulating partitions):

### Listing partitions of the current disk: 
command: ```fdisk -l```


### Creating a Partition:
command: ```fdisk /dev/<partition device>``` 
> (<partition device> can either be sda, vda...)


### Deleting a Partition: 
> deleting a partition relieves the disk space to reallocate disk space for any future use.

command: ```fdisk /dev/<partition device>```
  
enter: ```d```
> this starts the deletion process.
**Note** - Before deleting a partition:
<pre>
1. check for partition information by entering: i (lists all partiitons)
2. enter the partition number to list further details on it.
3. if we want to delete this particular parititon, make sure to enter its number when prompted during the delete phase.
</pre>
command: ```#``` (enter the partition number)


### Rebooting the system after making change to partition table: 
command: ```partprobe```





