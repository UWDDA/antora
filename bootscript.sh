#!/bin/bash
antora antora-playbook.yml
cp -rp build/site/* /home/ubuntu/website/
