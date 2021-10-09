This file overviews how to modify the boot loader: 


+---------------------------------------------+

command: grub2-editenv list

We can edit the grub file found in: 
command: vi /etc/default/grub

When we finish editing the file: 
command: grub2-mkconfig -o /boot/grub2/grub.cfg
