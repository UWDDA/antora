#remove directory

cd ~

rm -rf antora 

sudo rm -rf /var/www/html/*

#@todo -uninstallation of dependencies 
#nodejs, npm, nvm, antora cli, antora site generator, http server, apache2 


sudo apt remove nodejs

sudo apt purge nodejs

sudo apt autoremove

nvm current

nvm uninstall node_version

sudo wipe -r antora

sudo apt-get remove apache2
