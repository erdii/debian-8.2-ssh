# debian-8.2-ssh

A sandbox environment with based on debian-8.2 *oh-my-zsh* preinstalled  

run this in a new empty folder that will be mounted inside ( omit the -v... argument if you dont want a volume to be mounted )  

```
# docker run -d -p 22:2222 -v $(pwd):/wd --name mysandbox erdii/debian-8.2-ssh
1dfbc79e05c65e76e42ba3812405b63f70dfcf6599b5c0610eb332c53b28b013
# ssh root@localhost -p 2222
The authenticity of host '[localhost]:2222 ([::1]:2222)' can't be established.
ECDSA key fingerprint is xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:x:xx.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '[localhost]:2222' (ECDSA) to the list of known hosts.
root@localhost's password: screencast

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
root@1dfbc79e05c #
```
