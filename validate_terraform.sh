#!/bin/bash

# Description: Validate terraform templates
# Maintainter: Yurii Fisakov, fisakov.root@gmail.com

cd terraform || exit
tfdir=$(pwd)
echo $tfdir

cd $tfdir/stage/ || exit
terraform init -backend=false
terraform validate -var-file=terraform.tfvars.example

cd $tfdir/prod || exit
terraform init -backend=false
terraform validate -var-file=terraform.tfvars.example

