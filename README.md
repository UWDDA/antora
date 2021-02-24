  # antora

Installing Antora

This is a baseline setup for the antora package

<img src="./img/antora2.jpg" width="100" height="100"/> <img src="./img/ubuntu.jpg" width="175" height="100"/>

CONTENTS OF THIS FILE
---------------------

* Introduction
* Dev Dependencies
* Requirements
 * Installation
 * Configuration
 * Maintainers


 INTRODUCTION
------------

* OS being utilized: Ubuntu 18.04 

* This file tells the user the necessary requirements for installing Antora on the Ubuntu system. 
For more information on the topic specifically, you may visit 
(URL https://docs.antora.org/antora/2.3/install/install-antora/). 

DEV DEPENDENCIES
--------------
* Node.js v8.10.0


REQUIREMENTS
------------

* Antora requires the installation of Node.js to install and run Antora on the Ubuntu system.
For a description of this module, visit (URL https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04)

INSTALLATION
------------

* Follow these steps below to install Node.js.

$ sudo apt update
$ sudo apt install nodejs
$ sudo apt install npm

* Download NVM Install Script
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
​
* Set NVM Environment Variables

$ export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
​
* Install Node LTS
$ nvm install --lts

* Once installed, run the command below to confirm that Node is installed. There will be a version number displayed once the command is complete. 

$ nodejs -v 

* After this, move on with steps to install Antora along with the site generator package.

$ npm i -g @antora/cli@2.3 @antora/site-generator-default@2.3
​
* Run this command to get the version and latest patching number.There will be a version number displayed once the command is complete. 
* 
$ antora -v



CONFIGURATION
-------------

* There are no specific configurations required for installing Antora itself.


MAINTAINERS
-----------

* Hannah Pinson
* Kelvin Spencer 
