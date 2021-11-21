# This file overviews SELinux: 

- SELinux stands for Security enforce linux. 
- It is what determines what processes are allow to access in
  certain directories. This is not to be confused with groups and users. 
  This is specific to processes at the system level.
- There are 3 classes of SELinux: enforcing, permissive, disabled 
- A file will always inherit the context of the directory in which
  it was created in. Moving a file to another directory wont change
  its context. 
- A file must take the same context label as the service that will access the file.


### To show the current mode of SELinux: 
command: ```getenforce```

### To modify the SELinux mode: 
command: ```setenforce <mode>```

### To show the status of SELinux:
  ```
command: sestatus
  ```

### Main configuration file of SELInux :
  ```
directory: /etc/selinux/
modify: config
  ```


### Main Log files where all SELinux Actions are stored:
  ```
command:  cat /var/log/messages  | grep "SELinux "
  ```


### To show what files are allowed access by what processes:
command: ```ls -Z```

```
           user is unconfined with a permission. 
           |        
           |        |                   service with permission 
           |        |                   |
unconfined_u:object_r:httpd_sys_content_t:s0 file
```


### To show all the permissoins of each process in the system: 
  ```
command: semanage fcontext -l (shows all the context of the files in the system) 
  ```


### To change the context of a file to the context of the directory: 
  ```
command: restorecon <filename>  
  ```


### To ensure that each file in a directory will contain the same label context as its parent directory upon reboot: 
(make a new file in the parent directory)
command: touch /.autorelabel
