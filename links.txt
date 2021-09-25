Links: 

- We can create soft and hard links to files using ln command. 
- ln creates a hard link by default.
- The -> symbol indicates a link to another file.
  This means that each link points to another source file located
  somewhere else in the system.
- Changes to a source file or a linked file also change the link


Symbolic Links (Soft link): 

To make a symbolic link: 

ln -s <linked file> <name of link>

*Note. This will make the link to the file in whatever directory 
you are currently in. The link, like a shortcut, will be made in 
the directory from which the command had been entered.   

*Note. Do no include the / at the beggining of the <name of link>.

*Note. Changing the file name after a link has been created will NOT change the pointer respectively. The pointer link will point to the old file's name. ie ~ will not propograte name changes.  

*Note. Updates to a soft link will also update the contents of the source file.
 
*Note. Inode numbers will be different from the links and source file.


To remove a link, just rm it. 

To find the path to where the linked file should be positioned: 
readlink -f <linkname>

====================================

Hard Links: 

- The source file and the hardlink will have the same inode number and permissions as each other.
- A hard link will always keep its reference to the hard link file if changed or moved. 

