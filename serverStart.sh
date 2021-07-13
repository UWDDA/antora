#!/bin/bash
sudo docker run -dit -p 80:80 -v /var/www/html:/var/www/html apache2
