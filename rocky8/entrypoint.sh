#!/bin/sh

if [ "$1" = "start" ]; then
	echo "Starting supervisor..."
	/usr/bin/supervisord
elif [ "$2" = "initkeys" ]; then
	ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -b 4096 -t rsa
else
	echo "Only option alloawed: start|initkeys"
fi