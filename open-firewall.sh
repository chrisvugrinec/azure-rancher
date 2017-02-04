#!/bin/bash
echo "resourcegroup:"
read resourcegroup
echo "rulename:"
read rulename
echo "port:"
read port
echo "prio: >100 <4096"
read prio
for nsg in $(azure network nsg list $resourcegroup | awk '{print $2}' | grep firewall)
do
  azure network nsg rule create -g $resourcegroup -a $nsg -n $rulename -c Allow -p Tcp -r Inbound -y $prio -f Internet -u $port 
done

