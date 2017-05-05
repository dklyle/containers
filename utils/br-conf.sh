#! /bin/bash

# iptable rules to allow networking with containers, used in conjunction with netns
iptables -t filter -A FORWARD -d 172.19.0.0/24 -o netns0 -j ACCEPT
iptables -t filter -A FORWARD -s 172.19.0.0/24 -i netns0 -j ACCEPT
iptables -t filter -A FORWARD -i netns0 -o netns0 -j ACCEPT
iptables -t nat -A POSTROUTING -s 172.19.0.0/24 ! -d 172.19.0.0/24 -j MASQUERADE
