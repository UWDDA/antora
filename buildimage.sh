#!/bin/bash
sudo debootstrap focal focal > /dev/null
sudo tar -C focal -c . | sudo docker import - focal
