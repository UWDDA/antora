#!/bin/bash
apt-get update

apt-get install nodejs -y

apt-get install npm -y

apt-get install git -y 

nodejs -v 

npm i -g @antora/cli@2.3 @antora/site-generator-default@2.3

npm i -g http-server 

antora -v

