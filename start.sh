#!/bin/sh

dockerd --insecure-registry registry:5000 &
while [ ! -e /var/run/docker.sock ] ; do echo "Waiting to start" && sleep 0.1 ; done
while [ -e /var/run/docker.sock ] ; do echo "Waiting to quit" && sleep 2 ; done
