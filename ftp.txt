sftp - transfers file between servers.

#connect direclty to another server through ftp
sftp user@<ip>
#securely connects through .ssh key
sftp -i ~/.ssh/<file> <user>@<ip>

#user various different commands to transfer files back and forth
1. get <file> (retruns a file from the server to the local)
2. bye (exit)
3. put <file>  (puts local file to server)
4. put -r <folder>




