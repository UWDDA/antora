#!/usr/bin/python3
import subprocess 

print('returning')
def handler(event, context):
    try:
        bucketname = event['Records'][0]['s3']['bucket']['name']
    except:
        print("Event doesn't have records of the S3 bucket")
    bucketname = event['Records'][0]['s3']['bucket']['name']
    print('converting converted files to ' + bucketname + '/adocs/')
    subprocess.run(["./conversion.sh", bucketname])
    return "Files succesfully converted"
