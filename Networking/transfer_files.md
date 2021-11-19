Transfering/Copying files from two servers


scp:

transfer files securely over ssh (from/to)
Locally to remote
command: scp -i <path/to/sshkey private> <file> <user>@<ip>:~/<dest/path> 
Remote to local
command: scp -i <path/to/sshkey> <user>@<ip>:~<pathtofile> <localpath>

executing a local script on a remote server: 
command: scp <user>@<remote ip> "bash -s" < localfile.sh


sftp:
command: sftp -i <pathtosshkey> <user>@<ip>
command: get <file>
command: get -r <directory with files>
command: put <localfile>
command: put -r <localdirectorywithfiles> (sends all files to remote)
command: ls (lists the files)



