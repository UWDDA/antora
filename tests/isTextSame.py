#!/usr/bin/python3
#---Dependencies---
#sudo apt install poppler util
import subprocess
import os

#pathname variables
PATH_TO_PDF = '../conversions/pdfs/'
PATH_TO_ADOC = '../conversions/adocs/'
total = 0
passed = 0

def format_adoc_txt(self):
    #get rid of + in asciidoc
    self = self.replace('+', '')
    #split string into each line
    adoc_lines = self.split('\n')
    self = ''
    #add lines back together removing weird ones
    for line in adoc_lines:
        if not line.startswith('[#'):
            if not line.startswith('Page: link:#'):
                self += line
    #Remove line breaks
    self = self.replace('\n', '')
    #remove spaces
    self = self.replace(' ', '')
    return self

def format_pdf_txt(self):
    #remove line breaks
    self = self.replace('\n', '')
    self = self.replace(' ', '')
    return self

for pdf in os.listdir(PATH_TO_PDF):
    #set pdf file name variable
    pdf_name = os.fsdecode(pdf)
    #make sure current or previous directory isn't selected
    if pdf_name == '.' or pdf_name == '..':
        continue
    total += 1
    #call pdftotext command in bash
    subprocess.call(['pdftotext', PATH_TO_PDF + pdf_name, pdf_name + '.output'])
    #grab output file
    pdf_output = open(pdf_name + '.output', 'r')
    pdf_txt = pdf_output.read()
    #format pdf text
    pdf_txt = format_pdf_txt(pdf_txt)
    #grab asciidoc
    adoc = open(PATH_TO_ADOC + pdf_name + '.adoc', 'r')
    #grab text
    adoc_txt = adoc.read()
    #format
    adoc_txt = format_adoc_txt(adoc_txt)
    #Perform the test
    if adoc_txt  in pdf_txt:
        print(pdf_name + " Passed")
        passed += 1
    else:
        print(pdf_name + " Failed")
    adoc.close()
    pdf_output.close()
    subprocess.call(['rm', pdf_name+'.output'])
print(str(passed) + ' out of ' + str(total) + ' files passed')
