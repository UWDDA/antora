cd ~/antora 

git checkout HP_website_03092021

antora antora-playbook.yml

sudo cp -rp build/site/* /var/www/html/


