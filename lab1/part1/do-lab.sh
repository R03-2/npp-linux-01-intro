#!/usr/bin/bash

# INCLUDE ALL COMMANDS NEEDED TO PERFORM THE LAB
# This file will get called from capture_submission.sh

source provided/make_aliases.sh

docker exec -it clab-lab1-part1-switch   ip link add name mybridge type bridge
docker exec -it clab-lab1-part1-switch   ip link set mybridge up
docker exec -it clab-lab1-part1-switch   ip link set eth1 master mybridge
docker exec -it clab-lab1-part1-switch   ip link set eth2 master mybridge

docker exec -it clab-lab1-part1-switch   ip link add name mybridgea type bridge
docker exec -it clab-lab1-part1-switch   ip link set mybridgea up
docker exec -it clab-lab1-part1-switch   ip link set eth2 master mybridgea
docker exec -it clab-lab1-part1-switch   ip link set eth3 master mybridgea

docker exec -it clab-lab1-part1-switch   ip link add name mybridgeb type bridge
docker exec -it clab-lab1-part1-switch   ip link set mybridgeb up
docker exec -it clab-lab1-part1-switch   ip link set eth1 master mybridgeb
docker exec -it clab-lab1-part1-switch   ip link set eth3 master mybridgeb

docker exec -it clab-lab1-part1-switch   ip link add name mybridgec type bridge
docker exec -it clab-lab1-part1-switch   ip link set mybridgec up
docker exec -it clab-lab1-part1-switch   ip link set eth1 master mybridgec
docker exec -it clab-lab1-part1-switch   ip link set eth4 master mybridgec

docker exec -it clab-lab1-part1-switch   ip link add name mybridged type bridge
docker exec -it clab-lab1-part1-switch   ip link set mybridged up
docker exec -it clab-lab1-part1-switch   ip link set eth2 master mybridged
docker exec -it clab-lab1-part1-switch   ip link set eth4 master mybridged

docker exec -it clab-lab1-part1-switch   ip link add name mybridgee type bridge
docker exec -it clab-lab1-part1-switch   ip link set mybridgee up
docker exec -it clab-lab1-part1-switch   ip link set eth3 master mybridgee
docker exec -it clab-lab1-part1-switch   ip link set eth4 master mybridgee
