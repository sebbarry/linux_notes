# How to start, stop, and check the status of network services.

### Check the status: 
```
systemctl status <service>
systemctl is-active <service>
```

### Start the service: 
```
systemctl start <service>
```

### Stop the service: 
```
systemctl stop <service> 
```

### Enable a service: 
> (this creates a symlink for the service in /etc/systemd/system/..)

```systemctl enable <service>```

### Mask a service completely: (disable a service completely)
> (creates a symlink to -> /dev/null)

```systemctl mask <service>```

### Unmask a service: 
```systemctl unmask <service>```



