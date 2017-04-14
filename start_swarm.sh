#! /bin/bash

# Start vm's
vagrant up

#Initialize swarm cluster
MANAGER='10.0.7.100'
vagrant ssh manager -c "docker swarm init --advertise-addr $MANAGER"

# Getting cluster token
WT=`vagrant ssh manager -c 'docker swarm join-token worker' | grep token | awk '{ print $2 }'`

# Adding node1 and node2 to cluster
vagrant ssh node1 -c "docker swarm join --token $WT $MANAGER:2377"
vagrant ssh node2 -c "docker swarm join --token $WT $MANAGER:2377"

# Verify setup
vagrant ssh manager -c 'docker node ls'
