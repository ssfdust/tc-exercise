#!/bin/sh
# Add the all zeros priomap to prio
tc qdisc add dev eth0 root handle 1: prio priomap 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
# Add filter to match fwmark 233
tc filter add dev eth0 protocol ip parent 1:0 prio 1 handle 233 fw flowid 1:2
# apply delay
tc qdisc add dev eth1 parent 1:2 handle 20: netem delay 3000ms
