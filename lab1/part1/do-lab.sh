#!/usr/bin/bash

# INCLUDE ALL COMMANDS NEEDED TO PERFORM THE LAB
# This file will get called from capture_submission.sh


docker exec -it clab-lab1-part1-switch ip link add name mybridge type bridge
docker exec -it clab-lab1-part1-switch ip link set mybridge up
docker exec -it clab-lab1-part1-switch ip link set eth1 master mybridge
docker exec -it clab-lab1-part1-switch ip link set eth2 master mybridge


docker exec -it clab-lab1-part1-switch ip link add name mybridge1 type bridge
docker exec -it clab-lab1-part1-switch ip link set mybridge1 up
docker exec -it clab-lab1-part1-switch ip link set eth2 master mybridge1
docker exec -it clab-lab1-part1-switch ip link set eth3 master mybridge1


docker exec -it clab-lab1-part1-switch ip link add name mybridge2 type bridge
docker exec -it clab-lab1-part1-switch ip link set mybridge2 up
docker exec -it clab-lab1-part1-switch ip link set eth1 master mybridge2
docker exec -it clab-lab1-part1-switch ip link set eth3 master mybridge2

docker exec -it clab-lab1-part1-switch ip link add name mybridge4 type bridge
docker exec -it clab-lab1-part1-switch ip link set mybridge4 up
docker exec -it clab-lab1-part1-switch ip link set eth1 master mybridge4
docker exec -it clab-lab1-part1-switch ip link set eth4 master mybridge4

docker exec -it clab-lab1-part1-switch ip link add name mybridge3 type bridge
sw   ip link set mybridge3 up
sw   ip link set eth2 master mybridge3
sw   ip link set eth4 master mybridge3

sw   ip link add name mybridge5 type bridge
sw   ip link set mybridge5 up
sw   ip link set eth3 master mybridge5
sw   ip link set eth4 master mybridge5
