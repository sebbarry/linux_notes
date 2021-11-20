# BIOS:

1. this stands for the basic input output system loader. This is the first piece of software that runs when a computer is powered on. 

2. This is operating system independent. 

3. It is first performed before a os is loaded. Only when the BIOS succeeds will it then load an operating system. 

4. When a bootable device is found, it will then load the operating system. 

5. boot loader is what loads the operating system.

6. If there are multiple operating systems installed, we can tell teh bios which to load first. 

### GRUB Menu: 
> This is where we can select multiple operating systems to chose from for bootup. If we have a Linux OS, Windows OS, etc, we can select that from here. 

### /boot:

1. the /boot file system is where the files are contained to boot the linux oeprating system.

### initrd: 
This is a process where the initial files are aggregated to perform a boot mount, and temporarily holds certain files during the boot load process.

### Kernel ring buffer:

Contains messages from the linux kernel.
```
/var/logs/mesag
```

### Run levels:
We can use run level numbers (0, 1, 2, ..) to perform various system commands. Systemd is more widely used to replace run levels and makes the system processes more streamlined and simple.
