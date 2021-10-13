This file overviews how to create users and manage them. This is a continuation of the first file previously written. 


- Every new user has its own /home/<user> directory
- The root user has its own /root directory

+----------------------------------------+


Creating a User (Generic): 
(only root can administer a new user)
command: useradd <username>

Creating a User (with a userid):
command: useradd -u <userid> <username>

Creating a User (with a comment about the user):
command: useradd -u <userid> -c "<comment>" <username>

Issuing a password to a User: 
(only root can administer a password)
command: passwd <username>

To see a password for a user: 
command: cat /etc/shadow | grep <username>
(:!!: means a password is not defined)

Password expiration dates: 
command: chage -l <user> (shows password information)
command: chage -E 2020-10-14 <user> (change the expiration date of a password)
command: chage -M <#days> <user> (change the amount of days until password reset)
command: change -m <#days> <user> (change the minimum)

To force a password change for a user: 
command: chage -d 0 <user> (the user will have to change his/her password on next login)

To remove password expiration date for a user: 
command: chage -E -1 <user>

Switch to a User: 
command: su <username>

Get the ID and Information about the User: 
command: id <username>


Modifying a User: 
command: usermod ... <user>
example: usermod -c "this is the new comment for a user" <user>  (change the comm.)
example: usermod -u 1099 <user> (change a user's id)
(usermod --help for more tags to change)


Deleting a User: 
command: userdel <username>



  
+------------------------------------------+

Password index: 
        
        password hashed
        |    [expiration dates (show them using: chage -l <user>)]
        |    Account expires? 
        |    |
        |    | Minimum num days btwn password change
        |    | | Max num days **
        |    | | | Num days of warning before password expires.
        |    | | | |
user001:$6$r:0:6:4:7::





