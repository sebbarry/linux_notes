#Locating Files On A Linux System:

locate command:
    Will return any file/directory name attempted to locate.
    - locate <file> 

find command: 

- find a file or folder by file name: 
find <foldertolookin> -name <file>

- find a file or folder created by a user: 
find <foldertolookin> -user <username>
 
- specifically find a file created by a user: 
find <foldertolookin> -type f -user <username>

- specifically find a folder created by a user: 
find <foldertolookin> -type d -user <username>
 
- specifically find files or folders owned by a group: 
find <foldertolookin> -group <groupname>
find <foldertolookin> -type <df> -group <groupname>

- specifically find files within a n modification time limit
- : defines within n time
+ : defines above n time
find <foldertolookin> -type <df> -group <groupname> -mtime <-+><#>

- specifically find files by userid, groupip
**Note, to find a users id, just type: id <username>
find <foldertolookin> -type f -uid <uid>
find <foldertolookin> -type f -gid <groupid>

- executing a command after find: 
find <foldertolookin> .. -exec <command> {} \;

example: removing files belonging to userid
find <foldertolookin> -f -uid <uid> -exec rm {} \;


stat command:
Gives statistics about a specific file

stat <directory/file> 







