#!/bin/bash
sudo docker image rm -f $(sudo docker images -a -q)
