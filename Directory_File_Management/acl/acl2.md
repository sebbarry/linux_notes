
# Temporarily Deleting Permissions from Files

This is useful if we believe that there is a file that contains a virus. Removing permissions temporarily can help alleviate damage caused by a virus. This is typically done through a mask.

---

### We can mask a file through (temporarily remove): 
> command: ```chmod 000 <file>```


### To temporarily add permissions: 
> command: ```setfacl -m m::r-- <file>```

### To unmask a file: 
> command: ```setfacl -m m::rwx <file>```





