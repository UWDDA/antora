#!/bin/bash
sudo docker run -it --name antora-generator -v website:/home/ubuntu/website antora
sudo docker rm antora-generator
