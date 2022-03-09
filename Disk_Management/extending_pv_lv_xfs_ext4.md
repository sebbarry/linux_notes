
# This file overviews the process we need to take to expand or shrink logical volumes with a mounted file type of ext4 or xfs.

**refer to the lvm_whizlabs.md file for more information.**

## Pre-reqs: 
#### - Make sure to have an already existing lv partition.  
> (make a pv and vg)
> command: ```lvcreate --size <size> --name <name> <vg>)```

#### - Make sure we created a file system and mounted it accordingly.  
> command: ```mkfs.<type> ...```
    
> command: ```mount ...```


## Extending: 
(make sure the file system is mounted first)

command: ```lvextend -l +100%FREE -r <path to device lv (/dev/vg/lv_1)>```
    
command: ```lvextend --size +100MB -r <path to device lv (/dev/vg/lv_1)>```
    
command: ```resize2fs```
> (this resizes the file system after extending the lv)





## Reducing: 
command: ```lvreduce --size -1G -r <path to device lv (/dev/vg/lv_1)>```
    
command: ```resize2fs (this resizes the file system after extending the lv)```


### We can also use this command to resize to an exact size rather than incrementing or decrementing: 
command: ```lvresize -L <size> -r /dev/vg/lv_1```



##  Resizing Physical Volume after Disk Adjustment
command: ```pvs``` <- to show the pv path
command: ``` pvresize /dev/<path>/<to>/<pvolume>```
    




