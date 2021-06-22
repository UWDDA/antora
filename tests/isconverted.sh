#!/bin/bash

if [[ -f ../file.pdf ]]
then
	if [[ -f ../file.adoc ]]
	then
		echo "File successfully converted"
	else
		echo "File not converted"
	fi
else
	echo "There is no file.pdf"
fi
