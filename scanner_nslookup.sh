#!/bin/bash

NETWORK=$1

printf "%-15s %-40s\n" "IP" "HOSTNAME"
printf "%-15s %-40s\n" "---------------" "----------------------------------------"

for i in {1..255}
do
    ip="$NETWORK.$i"
    
    host=$(nslookup $ip 2>/dev/null | grep "name =" | awk '{print $4}')
    
    if [ -z "$host" ]; then
        host="Sin registro"
    fi

    #printf "%-15s %-40s\n" "$ip" "$host"
    echo "$ip|$host"
done
