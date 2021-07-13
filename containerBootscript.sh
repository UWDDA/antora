#!/bin/bash
sudo docker run -it --name antora-generator -v /var/www/html:/var/www/html antora
sudo docker rm antora-generator
