#!/bin/bash


sudo apt-get update
sudo apt-get install -y software-properties-common

sudo apt-add-repository -y ppa:opm/ppa
sudo apt-get update

sudo apt-get install -y mpi-default-bin libopm-simulators-bin
