#!/bin/bash
#Installs all necessary apps to convert pdf to adoc

# install pandoc
apt-get install pandoc

#pip3 install pdfminer
apt install python3-pdfminer

#install poppler utils
apt-get install poppler-utils
