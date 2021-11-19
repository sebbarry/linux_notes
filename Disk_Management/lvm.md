
LVM is a virtualized environment, that aggregates all underlying segmeneted disk space and disk paritions into one single pool of storage.

This serves many different advantages for us. 
1. We can buy or allocate smaller chunks of disk space into one larger pool of data. 

 - 4 250G disk drives = 1T of drive. This can be aggregated into a single virtualized volume group.

2. creating a virtualized environment allows a much more flexible flow of data space. 
3. we can expand or shrink file systems in real time while the data remains online. 
4. migrate data from one storage device to another while the data is online. 
5. we can replicate and backup data to another file system. 
6. we can create point-in-time snapshots of your filesystems.


=================================================
  Architecture Overview (Layers of abstraction)
=================================================

-----------------------
File System           | (these are the file systems that sit 
                        on top of the logical volume layers)
                        mkfs -t ext4 /dev/vg_name/lv_name
-----------------------
Logical volume layers | (these are created from a volume 
                         group. we extend these for 
                         extra space) 
                        lvcreate -L 100G -n <lv_name> <vg_name>
-----------------------
Volume group (VG)     | (made up of one or more physical 
                        volumes. These are like pools 
                        or storage that aggregate all physical volume mounts) 
                        vgcreate <vg_name> <pv_name> 
-----------------------
Disk partitions       |
-----------------------
Physical volumes (PV) | (these are storage deivces used
                        by the machine) 
                        pvcreate <path ie ~ /dev/<name>>
-----------------------



Commands:

lvmdiskscan - shows all the stroage devices taht have the 
              abiliyt to be used with lvm. shows what 
              disks are available.

lsblk - shows the logical block units
        use -p to show the path.

pvcreate <path> - initializes the disk availbe for use 
                  with the lvm.

pvs - shows the list of pv's with this  command.

vgcreate <name> <volume we just init.>
    - volume names can be named: vg_<app>

vgs - shows the logical volumes groups we have just init.

lvcreate -L <size ~ 20G, ...> -n <name> <volume group name>

lvs - shows all the logical volumes
lvdisplay - shows all the logical volumes (more specific)

mkfs -t <type> <path> - creats a filesystem 
mkdir /data/
mount <file system name> <directory>

lvcreate -L <size> -n <name> <file group>

**** remember, to make things permanent and mounted at boottime, make sure  
to add everything to the /etc/fstab file


========================================================
** Logs
we want to create a logical volume for logs.
                  #lv name #volume group
lvcreate -L 25G -n lv_logs vg_app

each logical volume is divided up into le's. logical extents.
a collectoin of logical extents make up logical volumes

lvdisplay grep "Current LE"  -> shows information about LE's
these are the number of logical extens taht comprise a logical v.

lvdisplay -m

pvdisplay -m 
each physical volume also have a bunch of Physical extents.

sometimes, there isn't enough free space for a logical volume 
this is due to some metatdata needed for each logical volume
that takes up some space.

we can use:
lvcreate -l 100%FREE -n lv_logs vg_app


==================Extending volume groups=======================
vgs grep "VFree"
1. extend volume group
vgextend <name of vg> <path for physical volume we want to add to vg>

2. extend logical volume
            #extend using +
lvextend -L +5G <path to the logical volume>

# this will change the logical volume size, not the file system.

to resize the file sysytem on top of the logical volume size:
resize2fs <path>

==================Mirroring Logical Volume Groups===============
pvcreate /dev/sdd /dev/sde #ceate physical volume groups
pvs #shows the physical volumes

==================Migrating data from Volume Groups===============

It might be better and more efficient for our volume groups to 
move them around. This is because some volume groups are faster
and more spacious than others.

pvcreate /dev/sde #initialize our disk
vgextend vg_app /dev/sde #add to our volume group
pvmove <source> <destination>




