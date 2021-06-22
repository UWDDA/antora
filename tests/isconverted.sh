#!/bin/bash
declare -i total=0
declare -i converted=0
for FILE in ../conversions/pdfs/*
do
	total=$((total + 1))
	if [[ -f ../conversions/adocs/FILE ]]
	then
		echo "PDF converted"
		converted=$((converted + 1))
	else
		echo "File not converted"
	fi
done
echo "$converted out of $total PDFs converted"
