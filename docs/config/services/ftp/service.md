---
title: FTP Service
---

{% capture overview %}

{% endcapture %}

The FTP service will simulate a ftp server.

```
[service.ftp]
type="ftp"
port="tcp/21"
banner="Welcome to the HoneyTrap FTP server"
servername="ftp01.honeytrap.io"
files="secret.txt"
```
