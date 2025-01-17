#!/bin/bash
if  !(nc -z -w 2 192.168.111.5 80) 
 then
  systemctl stop keelaived.service
  exit 1
fi
if !(test -f /var/www/html/index.nginx-debian.html)
  then
  systemctl stop keelaived.service
  exit 1
fi
