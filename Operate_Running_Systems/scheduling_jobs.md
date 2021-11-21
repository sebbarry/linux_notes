
# This file overviews scheduling tasks/jobs on our system. 



When we run a command on a system, they generally happen at the moment they are invoked. 

```at```: 
1. at calls commands to be executed at a certain time. 
2. atq lists the user's pending jobs (unless root ~ listing all jobs).
3. atrm deletes jobs per job number.
4. batch executes commands when the load drops below a certain level. 

```cron```:
1. schedules commands to be run on intervals.


## at command: 

Schedule a command to start at a particular time:
**Note** This will bring up the ```at``` command prompt. 

command: ```at 5:00 am```
```
:at> reboot
:C^d
:job 3 at Sat Aug 29 05:00:00 2021
```

### Show or list schedule jobs: 
command: ```atq```


### Delete a job by job number:
command: ```atrm <job num>``` 

### Schedule a job after a particular time: 
```
command: at now +20 minutes
command: at now +1 hour
command: at now +1 days 
```

### To change a user's access to a particular command to run on at: 
(add a user's name to this file)
modify: ```/etc/at.deny```




## cron command: 

modify: ```/etc/crontab``` 
this file stores all processes that are run on intervals.

```
# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name command to be executed
```
```  
* means ignore
/n means every n 
so, /1 in the months column means every January.
/5 in the minute column, means every 5 minutes.
#-# is a range of values.
#,# are a selection values
```
  
command: ```fc -e vi```
> (brings up the last executed command in vim to edit.)
