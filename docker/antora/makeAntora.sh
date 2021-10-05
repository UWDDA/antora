#!/bin/bash
cd adocs/
for FILE in *
do
        if ! grep -q $FILE ../docs/modules/ROOT/nav.adoc;
        then
                FILENAME=$(echo $FILE | cut -d'.' -f 1)
                echo "* xref:$FILE[$FILENAME]" >> ../docs/modules/ROOT/nav.adoc
                cp  $FILE ../docs/modules/ROOT/pages
                echo "$FILE added"
        else
                echo "$FILE already exists"
        fi
done
