# This is how to configure a configuration file to always assign a default nice value to a particular user.

> *These users do not have to be a particular built in user. They can be users that are there for processes to run.*

command: ```cd /etc/security/limits.d```

Create a configuration file for a particular user: 

command: ```touch <username>-priority.conf```

In the configuration file, edit the file as so: 
```
<username>  hard    priority    <priority number 0-20>
```

