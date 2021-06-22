#!/usr/bin/python3
#---Dependencies---
#sudo apt install poppler util
import subprocess
import os

#pathname variables
path_to_pdf = '../conversions/pdfs/'
path_to_adoc = '../conversions/adocs/'
total = 0
passed = 0

def formatAdocTxt(adocTxt):
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
    return adocTxt

def formatPdfTxt(pdfTxt):
    #remove line breaks
    pdfTxt = pdfTxt.replace('\n', '')
    pdfTxt = pdfTxt.replace(' ', '')
    return pdfTxt

for pdf in os.listdir(path_to_pdf):
    #set pdf file name variable
    pdfName = os.fsdecode(pdf)
    #make sure current or previous directory isn't selected
    if pdfName == '.' or pdfName == '..':
        continue
    total += 1
    #call pdftotext command in bash
    subprocess.call(['pdftotext', path_to_pdf + pdfName, pdfName + '.output'])
    #grab output file
    pdfOutput = open(pdfName + '.output', 'r')
    pdfTxt = pdfOutput.read()
    #format pdf text
    pdfTxt = formatPdfTxt(pdfTxt)
    #grab asciidoc
    adoc = open(path_to_adoc + pdfName + '.adoc', 'r')
    #grab text
    adocTxt = adoc.read()
    #format
    adocTxt = formatAdocTxt(adocTxt)
    #Perform the test
    if adocTxt  in pdfTxt:
        print(pdfName + " Passed")
        passed += 1
    else:
        print(pdfName + " Failed")
    adoc.close()
    pdfOutput.close()
    subprocess.call(['rm', pdfName+'.output'])
print(str(passed) + ' out of ' + str(total) + ' files passed')
