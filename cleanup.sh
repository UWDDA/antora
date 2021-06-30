#!/bin/bash
#remove directory

cd ~

rm -rf antora/ 

sudo rm -rf /var/www/html/*
 
#nodejs, npm, nvm, antora cli, antora site generator, http server, apache2, popler-utils, pandoc, python-pdfminer 

sudo npm uninstall -g @antora/site-generator-default

sudo npm uninstall -g http-server

npm cache clean --force

sudo apt-get remove npm
sudo apt autoremove

sudo apt-get remove nodejs
sudo apt autoremove

nvm current
nvm uninstall node_versions

sudo apt-get remove poppler-utils
sudo apt autoremove

sudo apt-get remove apache2
sudo apt autoremove

sudo apt-get remove pandoc
sudo apt autoremove

sudo apt-get remove python3-pdfminer
sudo apt autoremove

cd ~
sudo rm -rf .nvm/
sudo rm -rf /usr/local/lib/node_modules/@antora/
sudo rm -f /usr/local/bin/antora
