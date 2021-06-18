#!/bin/bash
#CONVERSION: 
#-----

# Copy file over from local directory

cd Desktop

scp -i ~/<file> file.pdf ubuntu@<IP>:/home/ubuntu

# HTML conversion

pdf2txt -t html file.pdf | pandoc -f html -t asciidoc

pdf2txt -t html file.pdf

pdf2txt -t html file.pdf | pandoc -f html -t asciidoc > file.adoc

pdf2txt -t html file.pdf > file.html

# confirm converion
rm file.html
cat file.adoc 

#DEV DEPENDENCIES:
#----------------

#* asciidoctor

#* pandoc

#* python3.8

#* python3.pip

#* pdf2txt

#* python3-pdfminer 





