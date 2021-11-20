# This file overviews disk partitioning. 

## Disks can be divided into parts called partitions. 

> Allows us to allocate different parts of the disk for different purposes.

## Partitions allow you to seperate data. 


Partioning scheme examples.
1. OS, application, user, swap
2. os, User Home Directories

> As a systemadmin we all have the flexibility to partition the disk space as we want it to be.

## Check partition spaces: 
command: ```df -h```  
> Partitioning allows us to potect the overall system.

## MBR:
> - The MBR is the master boot record. Can only address 2tb of disk space.
> - The MBR has 4 primary partitions.

## GPT: 
> - Replacing teh older partitioning system.
> - Supports up to 128 partitions.

## Mount Points:
> - A direcotry used to access the data on a partition.

> - / is always a mount point.
> - /home/jason is on the partition mounted on /home directory.

### We can always mount points on other mount points. 
> - /home
> - /home/jason

## fdisk:
this is a partitioning tool to manipulate disk space partitions.


