#!/bin/bash
#Temporary static file location for temp solution
sudo docker run -it --name file-conversion -v "$(pwd)"/conversionfiles:/conversion/data conversion
sudo docker rm file-conversion
