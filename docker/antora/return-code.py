#!/usr/bin/python3
import subprocess 

print('returning')
def handler(event, context):
    print('Running runAntoraAws.sh')
    subprocess.run(["./runAntoraAws.sh"])
    return "Files succesfully transferred to site"
