CONVERSION: 
-----

# Copy file over from local directory

cd Desktop

scp -i ~/<file> file.pdf ubuntu@<IP>:/home/ubuntu



# install asciidoctor

sudo apt-get install asciidoctor

asciidoctor -v


# install pandoc

sudo apt-get install pandoc


# install python3.8

sudo apt install python3.8


# install python3.pip

sudo apt-get -y install python3.pip


# install pdf2txt

pip3 install pdf2txt


# install python3-pdfminer

sudo apt install python3-pdfminer


# HTML conversion

pdf2txt -t html file.pdf | pandoc -f html -t asciidoc

pdf2txt -t html file.pdf

pdf2txt -t html file.pdf | pandoc -f html -t asciidoc > file.adoc

pdf2txt -t html file.pdf > file.html

# confirm conversion

ls -la 

more file.adoc 


DEV DEPENDENCIES:
----------------

* asciidoctor

* pandoc

* python3.8

* python3.pip

* pdf2txt

* python3-pdfminer 





