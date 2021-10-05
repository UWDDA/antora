#!/usr/bin/python3
import subprocess 

print('returning')
def handler(event, context):
    try:
        bucketname = event['Records'][0]['s3']['bucket']['name']
    except:
        print("Event doesn't have records of the S3 bucket")
    print('Returning converted files to ' + bucketname + '/site/')
    subprocess.run(["./runAntoraAws.sh", bucketname])
    return "Files succesfully transferred to site"
