#!/bin/bash
#remove directory

cd ~

rm -rf antora/ 

sudo rm -rf /var/www/html/*
 
#nodejs, npm, nvm, antora cli, antora site generator, http server, apache2, popler-utils, pandoc, python-pdfminer 

sudo npm uninstall -g @antora/site-generator-default

sudo npm uninstall -g http-server

npm cache clean --force

sudo apt-get remove npm nodejs poppler-utils apache2 pandoc python3-pdfminer
sudo apt autoremove

cd ~
sudo rm -rf .nvm/
sudo rm -rf /usr/local/lib/node_modules/@antora/
sudo rm -f /usr/local/bin/antora
