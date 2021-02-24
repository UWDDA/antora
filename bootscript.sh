sudo apt update

sudo apt install nodejs

sudo apt install npm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install --lts

nodejs -v 

npm i -g @antora/cli@2.3 @antora/site-generator-default@2.3

antora -v

sudo apt-get install apache2

git clone https://github.com/UWDDA/antora.git

npm i -g http-server 

http-server build/site -c-1

sudo cp -rp demo-site/build/site/* /var/www/html/