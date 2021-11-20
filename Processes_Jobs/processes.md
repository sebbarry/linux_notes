# This file overviews running processes on the Linux system.

## List running processes.

ps (display process status)
```
    -e: everyting, all processes
    -f: full format listing
    -u username: display usernames' processes.
    -p pid: display pid

    ps -e: display all processes. 
    ps -ef: display all processes, full.
    ps -eH: display a process tree.
    ps -e --forect: display a process tree. 
    ps -u username: display a user's process.
```

We an also view processes using:   
> ```htop```
> 
> ```top```
> 
> ```pstree```

## Foreground vs background porocesses.
    
- place an ```&``` at the end of the command line when executing a command.
- ```bg``` (background a suspended process)
- ```fg``` (foreground a background process)
- ```kill``` (kill a process by job number or PID)
- ```kill -9 %<job id>```
- ```jobs [%num]``` list jobs.

## Kill processes.
    
```kill -l``` (shows a list of kill signals we can use for background running processes)
> We usually want to use ```kill -9 <pid>``` (to fully kill a pr)


