#!/bin/bash
# change nameservers
 echo nameserver 8.8.8.8 > /etc/resolv.conf

# write-lock the file (even root can't edit it)
 chattr +i /etc/resolv.conf

# kill dhcpcd (messes with IP)
 systemctl stop dhcpcd.sevice

# start VPN
 openvpn --config ~/icy.ovpn
