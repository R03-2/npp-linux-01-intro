#!/usr/bin/bash

# INCLUDE ALL COMMANDS NEEDED TO PERFORM THE LAB
# This file will get called from capture_submission.sh

source provided/make_aliases.sh

docker exec -it clab-lab1-part1-switch   ip link add name mybridge type bridge
docker exec -it clab-lab1-part1-switch   ip link set mybridge up
docker exec -it clab-lab1-part1-switch   ip link set eth1 master mybridge
docker exec -it clab-lab1-part1-switch   ip link set eth2 master mybridge

docker exec -it clab-lab1-part1-switch   ip link add name mybridge type bridge
docker exec -it clab-lab1-part1-switch   ip link set mybridge up
docker exec -it clab-lab1-part1-switch   ip link set eth2 master mybridge
docker exec -it clab-lab1-part1-switch   ip link set eth3 master mybridge

docker exec -it clab-lab1-part1-switch   ip link add name mybridge type bridge
docker exec -it clab-lab1-part1-switch   ip link set mybridge up
docker exec -it clab-lab1-part1-switch   ip link set eth1 master mybridge
docker exec -it clab-lab1-part1-switch   ip link set eth3 master mybridge

docker exec -it clab-lab1-part1-switch   ip link add name mybridge type bridge
docker exec -it clab-lab1-part1-switch   ip link set mybridge up
docker exec -it clab-lab1-part1-switch   ip link set eth1 master mybridge
docker exec -it clab-lab1-part1-switch   ip link set eth4 master mybridge

docker exec -it clab-lab1-part1-switch   ip link add name mybridge type bridge
docker exec -it clab-lab1-part1-switch   ip link set mybridge up
docker exec -it clab-lab1-part1-switch   ip link set eth2 master mybridge
docker exec -it clab-lab1-part1-switch   ip link set eth4 master mybridge

docker exec -it clab-lab1-part1-switch   ip link add name mybridge type bridge
docker exec -it clab-lab1-part1-switch   ip link set mybridge up
docker exec -it clab-lab1-part1-switch   ip link set eth3 master mybridge
docker exec -it clab-lab1-part1-switch   ip link set eth4 master mybridge
