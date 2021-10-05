#!/usr/bin/python3
import subprocess 

print('returning')
def handler(event, context):
    bucketname = event['Records'][0]['s3']['bucket']['name']
    print('Returning converted files to ' + bucketname + '/site/')
    subprocess.run(["./runAntoraAws.sh", bucketname])
    return "Files succesfully transferred to site"
