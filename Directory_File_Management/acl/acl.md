
This file overviews the ACL. The Access Control List is the file that controls the permission of files for particular users or groups.
 ------
 </br>
 The classic Unix permissions set by chmod (read/write/execute, user/group/other) have existed for a lot longer than ACL. If ACL had existed from the start then there wouldn't be a chmod as we know it. However, since chmod has existed for a very long time, many applications call it, many archive formats support the classic permissions, etc. You can express chmod permissions with ACL; they act as a sort of starting point for the ACL.

See Precedence of user and group owner in file permissions and Precedence of ACLS when a user belongs to multiple groups for a more detailed treatment of how access control works in the presence of ACL.

The chmod command also controls some flags which aren't really permissions, but are often called permissions nonetheless: setuid, setgid and the sticky bit. These aren't really permissions since they don't affect which accesses are authorized on the file, but how certain operations on the file work after they have been authorized. There's nothing like this with ACL.
</br>

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

