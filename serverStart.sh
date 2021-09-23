#!/bin/bash
sudo docker run -dit -p 80:80 -v website:/var/www/html apache2
