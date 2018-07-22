#!/bin/bash

# Description: Validate packer templates
# Maintainter: Yurii Fisakov, fisakov.root@gmail.com

maindir=$(pwd)

cd packer
packer validate -var-file=variables.json.example ubuntu16.json
packer validate -var-file=variables.json.example immutable.json

cd $maindir
packer validate -var-file=packer/variables.json.example packer/app.json
packer validate -var-file=packer/variables.json.example packer/db.json
