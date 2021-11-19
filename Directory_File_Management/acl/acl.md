
This file overviews the ACL. The Access Control List is the file that controls the permission of files for particular users or groups.
 ------
 

### We can use the getfacl command to display detailed information on a file.
</br>
command: <pre> getfacl <file> </pre>

<pre>
# file: echo_client.py
# owner: root
# group: root
user::rwx
group::r-x
other::r-x
</pre>



### We can also use the ```setfacl``` to work with the acl.

### We can modify a specific user's permission for certain files. 

> command: ``` setfacl -m user:<user>:<rwx> <file> ```
> (m is modify, rwx are options or permissions to modify a file with) 
> or
> command: ```setfacl -x u:<user> <file>```
> (this allows us to enable execute permissions for a particular user of a file)

</br>

### Use setfacl to modify permissions without targeting a specific user: 
> command: ```setfacl -m user::<rwx> <file>```

</br>


### Remove all permissions from all users: 
> command: ```setfacl --remove-all <file>```

</br>

### Copy identical permissions from one file to another file: 
> command: ```getfacl <original file> | setfacl --set-file=- <new file>```

