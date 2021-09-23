#!/bin/bash

cd docker/apache2/
cp ~/intern-deploy .
sudo docker build -t apache2 .
rm intern-deploy

cd ../antora/
cp ~/intern-deploy .
sudo docker build -t antora .
rm intern-deploy .

cd ../conversion/
cp ~/intern-deploy .
sudo docker build -t conversion .
rm intern-deploy
