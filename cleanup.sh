cd ~

rm -rf antora 

rm -rf /var/www/html/*

#@todo -uninstallation of dependencies 
#nodejs, npm, nvm, antora cli, antora site generator, http sesrver, apache 

sudo apt remove nodejs

sudo apt purge nodejs

sudo apt autoremove

nvm current

nvm uninstall node_version

sudo wipe -r antora

sudo apt-get remove apache2
