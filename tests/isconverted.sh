#!/bin/bash
declare -i total=0
declare -i converted=0
cd ../conversions/pdfs/
for FILE in *
do
	total=$((total + 1))
	echo $FILE
	if [[ -f ../adocs/$FILE.adoc ]]
	then
		echo "PDF converted"
		converted=$((converted + 1))
	else
		echo "File not converted"
	fi
done
echo "$converted out of $total PDFs converted"
