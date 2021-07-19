  # Antora

Installing Antora

This is a baseline setup for the antora package.

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
----------------
* Node.js v8.10.0
 * npm
 * nvm
* Apache2 Web Server
* Pandoc
* PDFMiner
* Poppler Utils

REQUIREMENTS
------------

* Antora requires the installation of Node.js to install and run Antora on the Ubuntu system.
For a description of this module, visit (URL https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04)

INSTALLATION
------------

* To install Antora and Apache2 and their dependencies, run the script setup.sh

$ ./setup.sh

* To install dependencies for conversion.sh, run conversionSetup.sh

$ ./conversionSetup.sh

UNINSTALLATION
--------------
* To uninstall all packages and their dependencies associated with this project, run cleanup.sh

$ ./cleanup.sh

CONFIGURATION
-------------

* To convert a PDF to AsciiDoc, place a file in the root folder and name it "file.pdf" then run the "conversion.sh" script.

$./conversion.sh

MAINTAINERS
-----------

* Hannah Pinson
* Kelvin Spencer
* Kyle Mercer 
