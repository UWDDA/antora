#remove directory

cd ~

rm -rf antora/ 

sudo rm -rf /var/www/html/*

#@todo -uninstallation of dependencies 
#nodejs, npm, nvm, antora cli, antora site generator, http server, apache2, popler-utils, pandoc, python3.8, python-pdfminer 

sudo npm uninstall -g @antora/site-generator-default

npm cache clean --force

sudo apt remove nodejs

sudo apt-get remove nodejs

sudo apt autoremove

nvm current

nvm uninstall node_versiona

sudo wipe -r antora

sudo apt-get remove poppler-utils

sudo apt autoremove

sudo apt-get remove apache2

sudo apt autoremove

sudo apt-get remove pandoc
sudo apt autoremove

sudo apt-get remove python3.8
sudo apt autoremove

sudo apt-get python3-pdfminer
sudo apt autoremove
