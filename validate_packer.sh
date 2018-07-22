#!/bin/bash

# Description: Validate packer templates
# Maintainter: Yurii Fisakov, fisakov.root@gmail.com

# Show used checker versions
packer version

maindir=$(pwd)

cd packer || exit
packer validate -var-file=variables.json.example ubuntu16.json
packer validate -var-file=variables.json.example immutable.json

cd "$maindir" || exit
packer validate -var-file=packer/variables.json.example packer/app.json
packer validate -var-file=packer/variables.json.example packer/db.json
