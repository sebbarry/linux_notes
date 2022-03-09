#!/bin/bash

#tar is used to create an archive of a file. this is also to zip files for space optimizations.

#1. to make a tar folder
     #v is just verbose
    #c compress
      #f is file (which is the tarball file)
tar -cvf <originalfolder>.tar <originalfolder>

#to check for files in the tarball
tar -tf <file>.tar

#2. To extract a folder contents
    #x is to extract 
      #f is file (which is the tarball file)
tar -xvf <file>.tar <endfolder>


#3. we cna gzip a tarball to compress an original file
gzip <file>.tar
#4. unzip
gunzip <file>.tar.gz

### tar will overwrite any file when issuing the command.

#5. to write a zipped file to stdout
gzip -c <file> | ...

#for example: 
#here we can copy over a disk mount, zip it, and copy it over to another server using ssh and stdout
dd if=/dev/da0 conv=sync,noerror bs=128K \
    | gzip -c \
    | ssh vivek@server1.cyberciti.biz dd of=centos-core-7.gz


