Interrupting Running Processes: 


Find mounted file systems: 
command: findmnt


To change the root password, switch to jail root environment: 
We must enable read and write of the root file system.
command: mount -o remount.rw /sysroot
command: chroot /sysroot
command: passwd root



