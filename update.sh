#!/bin/bash

dt=$(date '+%d/%m/%Y %H:%M:%S');

git clone https://github.com/awhipp/awhipp-atom-packages.git
cd awhipp-atom-packages/

apm list --installed --bare | grep '^[^@]\+' -o > awhipp_atom_packages.txt
echo -e "a\n*\nq\n"|git add -i

git commit -a -m "$dt"
git push

cd ..
rm -rf awhipp-atom-packages
