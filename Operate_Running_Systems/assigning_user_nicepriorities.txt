This is how to configure a configuration file to always assigna  default nice value
to a particular user.

These users do not have to be a particular built in user. They can be users that arethere for processes to run.


command: cd /etc/security/limits.d

Create a configuration file for a particular user: 
<username>-priority.conf

In the configuration file, edit the file as so: 

"""

<username>  hard    priority    <priority number 0-20>

"""

