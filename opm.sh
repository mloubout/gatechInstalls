#!/bin/bash


sudo apt-get update
sudo apt-get install software-properties-common

sudo apt-add-repository ppa:opm/ppa
sudo apt-get update

sudo apt-get install mpi-default-bin
sudo apt-get install libopm-simulators-bin
