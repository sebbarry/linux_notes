# This file represents instructions for configuring hostnames on a system and hostnameresolution.

## How to view a hostname: 
command: ```hostname```

## How to view detail on the system: 
command: ```hostnamectl```

## Changing a systems hostname: 
command: ```hostnamectl set-hostname <name of server>```

command: ```bash (changes the bash prompt to the new hostname)```


</br>


# Hostname resolution: 
The hostname resolution dpends on a switch factor called "nsswitch.conf". This file is a nameservice configuration file that defines the search order of the network databases based on the name server. This file involves the hostname resolution.

</br> 


# Static resolution file: /etc/hosts
If we have a hostname we need to define in the hosts file, we need to add it to the file.


</br>


# Dynamic hostname resolution: ```/etc/resolve.conf```
We can edit this file with a maximum of 3 server hostnames sorted by names.

### Adding a DNS server to this file ```/etc/resolve.conf```:
command: ```nmcli con mod <connection name> +ipv4.dns 8.8.8.8```

command: ```nmcli con up <connection name>```

### Deleting a DNS entry to the file: 
command: ```nmcli con mod <connection name> -ipv4.dns 8.8.8.8```

command: ```nmcli con up <connection name>```

### Adding a domain name to the /etc/resolv.conf: 
command: ```nmcli con mod <conenctoin name> +ipv4.dns-search <domain name>```

command: ```nmcli con up <connectoin name>```

### Ignore default modifications of a file: 
command: ```nmcli con mod <connection name> ipv4.ignore-auto-dns yes```

command: ```nmcli con up <connectoin name>```

> or restore: 

command: ```nmcli con mod <connection name> ipv4.ignore-auto-dns no``` 
command: ```nmcli con up <connection name>```








