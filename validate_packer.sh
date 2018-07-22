#!/bin/bash

# Description: Validate packer templates
# Maintainter: Yurii Fisakov, fisakov.root@gmail.com


ls -l
packer validate -var-file=packer/variables.json.example packer/ubuntu16.json
packer validate -var-file=packer/variables.json.example packer/immutable.json
packer validate -var-file=packer/variables.json.example packer/app.json
packer validate -var-file=packer/variables.json.example packer/db.json
