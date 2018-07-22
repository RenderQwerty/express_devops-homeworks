#!/bin/bash

# Description: Validate packer templates
# Maintainter: Yurii Fisakov, fisakov.root@gmail.com

cd packer || exit
ls -l
packer validate -var-file=variables.json.example ubuntu16.json
