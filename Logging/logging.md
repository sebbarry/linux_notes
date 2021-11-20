# Logging/Log Files

> Log files typically exist in the /var/log directory.



## Booting Process Logs:
1.Analyze the boot process time
> command: ```systemd-analyze```
2.Show what services delayed the boot process
> command: ```systemd-analyze blame```

## Query the systemd journal: 
command: ```journalctl```

command: ```journalctl -p err (shows the error messages from the log)```


## Modify the journalctl storage: 
command: ```cd /run/log/journal```

command: ```cd <file> (this file is the encoded journal file)```

## The configuration file is in: 
> ```/etc/systemd/journald.conf```

command: ```echo "SystemMaxUser=50M">>/etc/systemd/journald.conf```

command: ```systemctl restart systemd-journald  (after modifying the file)```




