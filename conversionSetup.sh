#!/bin/bash
#Installs all necessary apps to convert pdf to adoc

# install pandoc
apt -y install pandoc

#pip3 install pdfminer
apt -y install python3-pdfminer

#install poppler utils
apt -y install poppler-utils
