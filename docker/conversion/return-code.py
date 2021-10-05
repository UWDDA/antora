#!/usr/bin/python3
import subprocess 

print('returning')
def handler(event, context):
    bucketname = event['Records'][0]['s3']['bucket']['name']
    print('converting converted files to ' + bucketname + '/adocs/')
    subprocess.run(["./conversion.sh", bucketname])
    return "Files succesfully converted"
