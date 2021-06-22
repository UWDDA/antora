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
echo "***RUNNING TESTS***"
echo ""
cd ../../tests/
echo "TESTING CONVERSIONS"
./isconverted.sh
echo""
echo "TESTING TEXT INTEGRITY"
./isTextSame.py

#DEV DEPENDENCIES:
#----------------

#* Pandoc

#* python3.8

#* pip3

#* pdf2txt




