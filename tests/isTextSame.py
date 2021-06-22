#!/usr/bin/python3
#---Dependencies---
#sudo apt install poppler util

import subprocess

#Run pdftotext command in linux bash
subprocess.call(['pdftotext', '../file.pdf', 'output'])

#grab asciidoc
adoc = open('../file.adoc', 'r')
adocTxt = adoc.read()

#get rid of + in asciidoc
adocTxt = adocTxt.replace('+', '')
#split string into each line
adocLines = adocTxt.split('\n')
    
adocTxt = ''
#add lines back together removing weird ones
for line in adocLines:
    if not line.startswith('[#'):
        if not line.startswith('Page: link:#'):
            adocTxt += line
#Remove line breaks
adocTxt = adocTxt.replace('\n', '')
#remove spaces
adocTxt = adocTxt.replace(' ', '')

#grab output file
pdfOutput = open('output', 'r')
pdfTxt = pdfOutput.read()

#remove line breaks
pdfTxt = pdfTxt.replace('\n', '')
pdfTxt = pdfTxt.replace(' ', '')

if adocTxt  in pdfTxt:
    print("Pass")
else:
    print("Fail")
    diff = set(char for char in adocTxt) - set(char for char in pdfTxt)
    print('Differing characters: ' + diff)

adoc.close()
pdfOutput.close()
subprocess.call(['rm', 'output'])
