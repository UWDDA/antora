#!/usr/bin/python3
import subprocess 

print('returning')
def handler(event, context):
    subprocess.run(["./conversion.sh"])
    return "Files succesfully converted"
