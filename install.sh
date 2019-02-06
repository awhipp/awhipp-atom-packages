#!/bin/bash

git clone https://github.com/awhipp/awhipp-atom-packages.git
cd awhipp-atom-packages/
apm install --packages-file awhipp_atom_packages.txt
cd ..
rm -rf awhipp-atom-packages
