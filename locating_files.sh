:'
#Locating Files On A Linux System:
'

:'
locate command:
    Will return any file/directory name attempted to locate.
    - locate <file> 
'

:'
find command: 

- find a file or folder by file name: 
find <folder> -name <file>

- find a file or folder created by a user: 
find <folder> -user <username>
 
- specifically find a file created by a user: 
find <folder> -type f -user <username>

- specifically find a folder created by a user: 
find <folder> -type d -user <username>
 
- specifically find files or folders owned by a group: 
find <folder> -group <groupname>
find <folder> -type <df> -group <groupname>

- specifically find files within a n modification time limit
- : defines within n time
+ : defines above n time
find <folder> -type <df> -group <groupname> -mtime <-+><#>

- specifically find files by userid, groupip
**Note, to find a users id, just type: id <username>
find <folder> -type f -uid <uid>
find <folder> -type f -gid <groupid>

- executing a command after find: 
find <folder> .. -exec <command> {} \;

example: removing files belonging to userid
find <folder> -f -uid <uid> -exec rm {} \;

'

:'
stat command:
Gives statistics about a specific file

stat <directory/file> 
'







