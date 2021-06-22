#!/bin/bash
#CONVERSION: 
#-----

# AsciiDoc conversion
cd conversions/pdfs/
for FILE in *
do
	pdf2txt -t html $FILE | pandoc -f html -t asciidoc > ../adocs/$FILE.adoc
	#confirm converion
	head ../adocs/$FILE.adoc
done
echo ""
echo "CHECKING CONVERSION INTEGRITY"
echo ""

cd ../../tests/
./isconverted.sh

#DEV DEPENDENCIES:
#----------------

#* Pandoc

#* python3.8

#* pip3

#* pdf2txt




