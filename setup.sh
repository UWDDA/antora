#!/bin/bash
apt update

apt install nodejs

apt install npm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install --lts

nodejs -v 

npm i -g @antora/cli@2.3 @antora/site-generator-default@2.3

npm i -g http-server 

antora -v

apt-get install apache2

cd ~

rm -rf antora 

git clone https://github.com/UWDDA/antora.git 

cd antora 

chmod +x bootscript.sh 

./bootscript.sh 
