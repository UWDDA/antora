#!/bin/bash
#$1 = s3 bucket
s3bucket=$1
mkdir -p /tmp/pdf/
mkdir -p /tmp/adoc/
echo directories made
cd /tmp/pdf
aws s3 cp s3://$s3bucket/pdfs/ ./ --recursive

# AsciiDoc conversion
for FILE in *
do
	echo $FILE
	pdf2txt -t html $FILE | pandoc -f html -t asciidoc > ../adoc/$FILE.adoc
	echo converted $FILE
done

aws s3 cp ../adoc/ s3://$s3bucket/adocs/ --recursive
echo copied asciidocs to s3
rm -r /tmp/pdf/
rm -r /tmp/adoc/
