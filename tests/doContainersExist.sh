#!/bin/bash
sudo docker image ls > tempfile

#check for antora
if grep -q antora "tempfile"
then
	echo "Antora container exists"
else
	echo "Antora container does not exist"
fi

#Check for apache2
if grep -q apache2 "tempfile"
then
	echo "Apache2 container exists"
else
	echo "Apache2 container does not exist"
fi

#Check for conversion
if grep -q conversion "tempfile"
then
	echo "Conversion container exists"
else
	echo "Conversion container does not exist"
fi

#remove tempfile
rm tempfile
