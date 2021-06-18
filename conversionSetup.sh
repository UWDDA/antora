#!/bin/bash
#Installs all necessary apps to convert pdf to adoc
# install asciidoctor

sudo apt-get install asciidoctor

asciidoctor -v


# install pandoc

sudo apt-get install pandoc


# install python3.8

sudo apt install python3.8


# install python3.pip

sudo apt-get -y install python3.pip


# install pdf2txt

pip3 install pdf2txt


# install python3-pdfminer

sudo apt install python3-pdfminer
