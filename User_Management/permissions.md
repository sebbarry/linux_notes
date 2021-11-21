# File overviews the permissions features for Linux users. 

1. Symbolic permissions.
```
    #type
     #user
     |  #group
     |  |  #other
    -rw-r--r--

    Types:
    - = file
    d = directory
```

2. changing permissions. 
```    
    chmod u+rwx,g-x <file/directory>

    Symbolic  | Octal
    ----------------
    -rwx------ 700 (only owner has access to read, write, and ex)
    -rwxr-xr-x 755
    -rw-rw-r-- 664
    -rw-rw---- 660
    -rw-r--r-- 644

    ls -ld (this shows the permissions of the files and the dir.)
    chgrp <name of group> <file>
```    

**Note**, make sure to check direcoty permissions if getting issues with the file. keep working our way up to the root of the system if need be.


File creation mask determines default permissions. if no mask is users permissions would be 777 for directories and 666 for files.




