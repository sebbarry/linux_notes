# sftp - transfers file between servers.

## Connect direclty to another server through ftp
command: ```sftp user@<ip>```

## Securely connect through .ssh key
command: ```sftp -i ~/.ssh/<file> <user>@<ip>```

## Use various different commands to transfer files back and forth
1. get <file> (retruns a file from the server to the local)
2. bye (exit)
3. put <file>  (puts local file to server)
4. put -r <folder>




