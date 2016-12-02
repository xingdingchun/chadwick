#!/usr/bin/env sh
#Authour:chadwick
#Use:check ip active

active_ip_file="/tmp/active_ip_file.txt"
inactive_ip_file="/tmp/inactive_ip_file.txt"
##Clean file when execute script.
>$active_ip_file
>$inactive_ip_file

ip_pre="192.168.56."
for ip in {1..255}
do
{
   ping -c 3 -W 2  $ip_pre$ip &>/dev/null
   if [ $? -eq 0 ];then
       echo $ip_pre$ip >> /tmp/active_ip_file.txt
   else
       echo $ip_pre$ip >> /tmp/inactive_ip_file.txt
   fi
} &
done
wait
echo "check ip end\t $(date +"%F %H:%M:%S")"

