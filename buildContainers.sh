#!/bin/bash

cd docker/apache2/
sudo docker build -t apache2 .

cd ../antora/
sudo docker build -t antora .

cd ../conversion/
sudo docker build -t conversion .
