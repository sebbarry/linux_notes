# Locating Files On A Linux System:

## ```locate``` command:
command: ```locate <file>```
> Will return any file/directory name attempted to locate.


## ```find``` command: 

### Find a file or folder by file name: 
command: ```find <foldertolookin> -name <file>```

### Find a file or folder created by a user: 
command: ```find <foldertolookin> -user <username>```
 
### Specifically find a file created by a user: 
command: ```find <foldertolookin> -type f -user <username>```

### Specifically find a folder created by a user: 
command: ```find <foldertolookin> -type d -user <username>```
 
### Specifically find files or folders owned by a group: 
command: ```find <foldertolookin> -group <groupname>```
command: ```find <foldertolookin> -type <df> -group <groupname>```

### Specifically find files within a n modification time limit
command: ```find <foldertolookin> -type <df> -group <groupname> -mtime <-+><#>```
> ```-``` : defines within n time
> 
> ```+``` : defines above n time

### Specifically find files by userid, groupip
> **Note** To find a users id, just type: ```id <username>```
    
command: ```find <foldertolookin> -type f -uid <uid>```
    
command: ```find <foldertolookin> -type f -gid <groupid>```

### Executing a command after find: 
command: ```find <foldertolookin> .. -exec <command> {} \;```
   
# Examples:  
    
### Removing files belonging to userid: 
command: ```find <foldertolookin> -f -uid <uid> -exec rm {} \;```


## stat command:
command: ```stat <directory/file>```

> Gives statistics about a specific file








