#!/bin/bash
#Authou:chadwick
movefile=$(find /root/test/ -type f -size +2048k)
for n in $movefile
do
   /bin/mv $n /root/test01
done
