Installing a Remote Repository 


+-----------------------------+

**RH Linux Forks:

command: cd /etc/yum.repos.d

Use this link: dl.fedoraproject.org/pub/epel/8/
(We will use this link to configure this reposityr locally)

There are two ways to configure the remote repository: 

1. Automatic

command: cd /etc/yum.repos.d
command: yum-config-manager --add-repo=<url above>
(command: Y)


2. Manual

Create a file: 

"""

[url]
name=epel8
baseurl=<url>

"""


Check if the reposityro exists: 
command: yum repolist


+------------------------------------+

Configuring a Local Repository from a disk: 
(imagine we want to configure a dvd to link to our system)
1. take a backup of the dvd and configure it to link to our system. 
2. unmount the dvd

command: df -h 
(take note of where the cd device path is)

Take a copy of the cd and mount it. 
command: cd /
command: mkdir <mount point name> 
command: mount -o loop <path to DVD> <mount point name>


Mount through the fstab file: 
command: cd /etc/
command: vim fstab
"""
<path to disk>  <mount piont directory>     iso9660     loop    0   0
"""
command: mount -a

To copy over the files to another directory: 
command: cd /
command: mkdir <directory name> 
command: cd <old directory> 
command: tar -cvf - . | ( cd <new directory>; tar xvf -)


If we Want to Unmount it: 
(remove the line from fstab is applicable)
commnand: cd ..
command: umount <directory>


Configure the Local Repository: 
command: cd /etc/yum.repos.d
command: rm CentO...
command: vim <reponame>.repo
"""
[local-repo]
name=localrepo
baseurl=file:///repo
enabled=1
gpgcheck=0
"""
(check if we have local repo mounted)
command: yum repolist
command: yum repolist all 



