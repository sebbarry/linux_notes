# Interrupting Running Processes: 


### Find mounted file systems: 

command: ```findmnt```


### To change the root password, switch to jail root environment: 
> We must enable read and write of the root file system.
```
mount -o remount.rw /sysroot
chroot /sysroot
passwd root
```



