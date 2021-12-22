# This file overviews the installation process of software and other core tools associated. 


## Installing Software Packages: 
command: ```apt/yum install <package>```

## Uninstalling Software Packages: 
command: ```apt/yum remove <package>```


## Getting Information on a Particular Software Package: 
command: ```apt/yum info <package>```


## Getting Information on Different Packages: 
command: ```apt/yum search <software package>```

## Showing the Available Groups we are Allowed to Install Software For: 
command: ```apt/yum groups list```

## Installing/Removing a Group on our Server: 
command: ```apt/yum groupinstall "<group>"```

command: ```apt/yum groupremove "<group>"```


## Showing all Software Packages installed on the System: 
command: ```apt/yum list```


## Cleaning all cached software package Downloads Leftover: 
> (these files are the result of the unfinished installations)

command: ```apt/yum clean all```

## Show the dependency files for a Software Package: 
command: ```apt/yum deplist <package>```


## Show history of apt/yum Commands: 
command: ```apt/yum history list```

## Undo/redo a particular command from dnf: 
command: ```dnf history undo <list id>```

commnad: ```dnf history redo <list id>```


## Downloading a Sofware Package without Installing It: 
command: ```yum/apt download <package name>```

> (now to install the .dev or .rpm file)
> 
command: ```rpm -ivh <filename>```
  
## Check if an rpm package is installed: 
command: ```sudo rpm -qa <package>```

## List all of the rpm files for an installed program: 
command: ```sudo rpm -ql nano```
