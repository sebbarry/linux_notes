# Displaying and Listing the Network Manager Interfaces: 

## nmcli: 

#### Shows the name, UUID, type, device:
> command: ```nmcli con show```

#### Shows the device status:
> command: ```nmcli dev status```

(green colors mean the connection is active)

#### Delete the network connection: 
> command: ```nmcli con del <connection name>```

[3]
#### Add or restoring Network Connection Broadcast IP: 
> command: ```nmcli con add con-name <name> ifname <interface name> type <connec type>```

#### Add local ip address: 
> command: 
```
nmcli con add con-name <name> ifname <name> type <type> ip4 <ipaddr>/24 gw4 <broadcast ip>
```

#### Show Inforamtion about Current Connection: 
> command: ```nmcli dev show <conenction name> ```

#### Deactivate Connection: 
> command: ```nmcli con down <connection name>```

#### Reactivate connection: 
> command: ```nmcli con up <connection name>```


**Note, by default the network manager connects to the network automatically. To turn this behavior off and have us create the connection manually on startup: 

> command: ```nmcli con mod <connection name> connection.autoconnect no```


#### To change the IP address of a connection: 
```
command: nmcli con down <name> (switch network down)
command: nmcli con mod <name of connection> ipv4.addresses <ip address>/24
command: nmcli con mod <name> ipv4.gateway <ip gateway addr use nmcli dev show>
command: nmcli con mod <name> ipv4.method manual
command: nmcli con up <name> (switch network on again)
```


#### To revert to the default IP Address:
```
command: nmcli con del <name>
command: see [3] 
```







