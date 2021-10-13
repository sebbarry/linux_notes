This file explores how to configure firewall settings:


- zones are essentiall levels of trust. They are levels of authenticity of the incoming and outgoing connections.


+--------------------------------------------+

Make sure we install the firewall manager: 
command: sudo yum install firewalld
command: sudo systemctl enable firewalld
command: sudo systemctl start firewalld

Show firewall details: 
command: firewall-cmd --list-all

Show firewall services: 
command: firewall-cmd --list-services

Show active network interfaces: 
command: firewall-cmd --get-active-zones
command: firewall-cmd --list-all --zone=public


Show all zones for the network interface: 
command: firewall-cmd --list-all-zones
(zones that are active will show up as (active) at the top of each listing)


Add a new service: 
command: firewall-cmd --add-service=<service>

Remove a service: 
command: firewall-cmd --remove-service=<service>

Get the default zone: 
command: firewall-cmd --get-default-zone

Set default zone:
command: firewall-cmd --set-default-zone=<zone>

Modify a default zone for a specific networkinterface: 
command: firewall-cmd --zone=<zone> --change-interface=<interface name>


Show services for a specific zone: 
command: firewall-cmd --zone=<zone> --list-services

Add a port for a zone: 
command: firewall-cmd --zone=<zone> --add-port=<port#>/<type ie tcp, udp, etc>
command: firewall-cmd --zone=<zone> --add-port=<rangea-rangeb>/<type>


To create a new zone: 
command: firewall-cmd --permanent --new-zone=<zonename>
command: firewall-cmd --reload
command: firewall-cmd --permanent --get-zones

To add a service for a new zone: 
command: firewall-cmd --zone=<zone> --permanent --add-service=<service>
(ie https, http, ssh, etc.)






Run a service on the network for a certain amount oftime: 
command: firewall-cmd --add-service=<service> --timeout <#>m
example: firewall-cmd --add-service=<service> --timeout 15m


+-------------------------------------------------+

Panic mode options:
- Panic mode allows us to quickly turn off all incoming network traffic.


Switch panic mode on: 
command: firewall-cmd --panic-on

To check if panic mode ison: 
command: firewall-cmd --query-panic



+---------------------------------------------+

Zone levels: 

drop level: (lowest)
- all incoming levels will be dropped without responding to the source.

block level: 
- similar to the drop level, but will respond to the source.

public level: 
- will firewall certain incoming connections.

external level: 
- firwall is used as a gateway. Internal and external network services. 

internal level: 
- this is the internal network configuration.

dmz level: 
- only certain incoming connections are allowed. This is where a computer may be isolated from other computers on the network.

trusted and home levels: 
- these are the higehst levels of trust fora network.
