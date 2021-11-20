# This file overviews the way to solve the root cause for permission issues for certain files. 

**Ex. trying to solve why a user does not have the correct permissions for a particular file.**

### 1. check for generic permissions:
command: ```ll```

### 2. mask/reset permissions of the file: 
command: ```chmod 000 <file>```

### 3. open the file for anyone to use: 
command: ```chmod 777 <file>```


## We could also modify the write privelages with setfacl 
command: ```setfacl -m user:<user>:rwX <dir>```





