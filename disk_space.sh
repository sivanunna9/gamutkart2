#!/bin/bash
 CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
 THRESHOLD=15

 if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
   mail -s 'Disk Space Alert' towritekishore@gmail.com
 fi
