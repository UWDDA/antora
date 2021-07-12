#!/bin/bash
#CONVERSION: 
#-----
echo "Attempting to convert"
cd data
# AsciiDoc conversion
pdf2txt -t html file.pdf | pandoc -f html -t asciidoc > file.adoc

# confirm converionl
cat file.adoc 

#DEV DEPENDENCIES:
#----------------

#* Pandoc

#* python3.8

#* pip3

#* pdf2txt




