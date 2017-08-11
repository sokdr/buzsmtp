# buzsmtp
<b>Simple Bash SMTP enumeration</b>

Run only for port 25

Nmap should be installed on your linux machine in order to run the script:

Permissions: chmod +x buzsmtp.sh
Command: ./buzsmtp ipv4Address smtpPort

```

###################################################
###################################################
################### Welcome #######################
  ____  _   _ _________  __  __ _____ ____  
 | __ )| | | |__  / ___||  \/  |_   _|  _ \ 
 |  _ \| | | | / /\___ \| |\/| | | | | |_) |
 | |_) | |_| |/ /_ ___) | |  | | | | |  __/ 
 |____/ \___//____|____/|_|  |_| |_| |_|    

You entered a valid IPv4 address...moving on:
###################################################
Host is up

############## Port-Checking #################
192.168.80.131 [192.168.80.131] 25 (smtp) open

###################################################
############## BUZSMTP script options #################

1) SMTP Information  3) SMTP version
2) VRFY names	     4) Quit
Please check option: 1

Current SMTP extensions List
###################################################
220 metasploitable.localdomain ESMTP Postfix (Ubuntu)
250-metasploitable.localdomain
250-PIPELINING
250-SIZE 10240000
250-VRFY
250-ETRN
250-STARTTLS
250-ENHANCEDSTATUSCODES
250-8BITMIME
250 DSN
###################################################
Please check option: 2

###################################################
Enter a username to test: user
\220 metasploitable.localdomain ESMTP Postfix (Ubuntu)
252 2.0.0 user
###################################################
Please check option: 3

###################################################

Starting Nmap 7.25BETA1 ( https://nmap.org ) at 2017-08-11 20:12 EEST
Nmap scan report for 192.168.80.131 (192.168.80.131)
Host is up (0.00021s latency).
PORT   STATE SERVICE VERSION
25/tcp open  smtp    Postfix smtpd
MAC Address: 00:0C:29:7F:66:CD (VMware)
Service Info: Host:  metasploitable.localdomain

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 0.72 seconds
###################################################
Please check option: 4

```
