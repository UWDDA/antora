#!/bin/bash
apt update

apt install nodejs -y

apt install npm -y

nodejs -v 

npm i -g @antora/cli@2.3 @antora/site-generator-default@2.3

npm i -g http-server 

antora -v

