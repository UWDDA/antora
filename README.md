  # PDF to HTML Site Using Antora

CONTENTS OF THIS FILE
---------------------

* Introduction
* Dev Dependencies
* Requirements
 * Installation
 * Configuration
 * Maintainers


 INTRODUCTION
------------

* OS being utilized: Amazon Linux
* Prior AWS knowledge is assumed. Please refer to AWS documentation and tutorials for AWS-specific configurations.

DEV DEPENDENCIES
--------------
* Node.js v8.10.0
* Pandoc
* PDFminer
* Poppler-utils
* AWS CLI version 2

REQUIREMENTS
------------

* Docker
* AWS Account

SETUP
------------

* Follow these steps below to setup your Docker images

* Install Docker

$sudo apt-get install docker-ce docker-ce-cli containerd.io

* Log into your AWS account
* Create an access key for a user with the following credentials: 
  * S3 Full Access
  * Lambda Full Access
  * ECR Full Access
* Copy the access key and private access key somewhere safe

* Clone or download this GitHub project
* Move to the docker/conversion/ directory
* Open amazon-login.sh
  * Fill in blank spaces with your access key and private access key
  * Fill in the region you want to use
  * Make sure you remove the brackets
* Build the conversion image

$sudo docker build -t conversion .

* Move to the docker/antora/ directory
* Open amazon-login.sh
  * Fill in blank spaces with your access key and private access key
  * Fill in the region you want to use
  * Make sure you remove the brackets
* Build the antora image

$sudo docker build -t antora .

* Push both images to Amazon ECR 

* Create three directories in S3:
  * adocs
  * pdfs
  * site

* Create AWS Lambda functions
  * Select container image
  * Provide IAM role with S3 full access to Lambda functions

CONFIGURATION
-------------

* Lambda
  * Both Lambda functions need S3 Full Access

* S3
  * The directory site/ must be public in order for users to view the website
  * The direcotry pdfs/ must have a trigger for the conversion lambda function upon any put action
  * The directory adocs/ must have a trigger for the antora lambda function upon any put action


MAINTAINERS
-----------

* Kyle Mercer
* Kelvin Spencer 

CONTRIBUTORS
-----------

* Hannah Pinson
* Kelvin Spencer
* Kyle Mercer
