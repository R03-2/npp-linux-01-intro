#!/usr/bin/bash

# INCLUDE ALL COMMANDS NEEDED TO PERFORM THE LAB
# This file will get called from capture_submission.sh


sw   ip link add name mybridge type bridge
sw   ip link set mybridge up
sw   ip link set eth1 master mybridge
sw   ip link set eth2 master mybridge


sw   ip link add name mybridge1 type bridge
sw   ip link set mybridge1 up
sw   ip link set eth2 master mybridge1
sw   ip link set eth3 master mybridge1


sw   ip link add name mybridge2 type bridge
sw   ip link set mybridge2 up
sw   ip link set eth1 master mybridge2
sw   ip link set eth3 master mybridge2

sw   ip link add name mybridge4 type bridge
sw   ip link set mybridge4 up
sw   ip link set eth1 master mybridge4
sw   ip link set eth4 master mybridge4

sw   ip link add name mybridge3 type bridge
sw   ip link set mybridge3 up
sw   ip link set eth2 master mybridge3
sw   ip link set eth4 master mybridge3

sw   ip link add name mybridge5 type bridge
sw   ip link set mybridge5 up
sw   ip link set eth3 master mybridge5
sw   ip link set eth4 master mybridge5
