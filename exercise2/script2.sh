#!/bin/bash

#Events per message type count
echo "  Count Type"
zcat log.zip|awk '{print $3" "$4}'|uniq -c
echo 

#Messages per destination count
echo "  Count Destination"
zgrep "Sent SMS" log.zip|awk '{print $8}'|sed 's/\[//g;s/\]//g'|sort|uniq -c
echo

#Show messages per transaccion id
read -p "Enter transaction ID:" ID
if [ ! -z $ID ]
then
  echo "Message is $(zgrep $ID log.zip|awk -F"msg:" '{print $2}'|awk -F":" '{print $2}'|sed 's/\]//g'|wc -c) chars long"
fi
