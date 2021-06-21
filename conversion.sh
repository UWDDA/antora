#!/bin/bash
#CONVERSION: 
#-----

# AsciiDoc conversion
pdf2txt -t html file.pdf | pandoc -f html -t asciidoc > file.adoc

# confirm converionl
cat file.adoc 

#DEV DEPENDENCIES:
#----------------

#* asciidoctor

#* pandoc

#* python3.8

#* python3.pip

#* pdf2txt

#* python3-pdfminer 





