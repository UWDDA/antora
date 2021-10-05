#!/bin/bash
#mkdir /tmp/adocs
#mkdir /tmp/docs
#$1 = s3 bucket
s3bucket=$1
cp -rf antoracfg/ /tmp/

aws s3 cp s3://$s3bucket/adocs/ /tmp/antoracfg/adocs/ --recursive

cd /tmp/antoracfg
pwd
ls -la
./makeAntora.sh
git init
git add *
git commit -m "Adding all files" 

antora antora-playbook.yml --stacktrace
aws s3 cp build/site s3://$s3bucket/site/ --recursive --acl public-read
