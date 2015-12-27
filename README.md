# debian-8.2-ssh

A sandbox environment with based on debian-8.2 *oh-my-zsh* preinstalled  

run this in a new empty folder that will be mounted inside ( omit the -v... argument if you dont want a volume to be mounted )  

```
# docker run -d -p 22:2222 -v $(pwd):/wd --name mysandbox erdii/debian-8.2-ssh
1dfbc79e05c65e76e42ba3812405b63f70dfcf6599b5c0610eb332c53b28b013
# ssh root@localhost -p 2222
Are you sure you want to continue connecting (yes/no)? yes
root@localhost's password: screencast
```  
  
## Credentials

* user: `root`
* password: `screencast`
