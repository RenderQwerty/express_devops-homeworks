#!/bin/bash

# Description: Validate packer templates
# Maintainter: Yurii Fisakov, fisakov.root@gmail.com

packer validate -var-file=packer/variables.json.example packer/ubuntu16.json
