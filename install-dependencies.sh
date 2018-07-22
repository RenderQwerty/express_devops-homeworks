#!/bin/bash

# Description: Install all dependecies for travis-ci tests
# Maintainter: Yurii Fisakov, fisakov.root@gmail.com

deps=( unzip python-pip )
packer_url=https://releases.hashicorp.com/packer/1.2.5/packer_1.2.5_linux_amd64.zip
terraform_url=https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
tflint_url=https://github.com/wata727/tflint/releases/download/v0.7.1/tflint_linux_amd64.zip

for dep in "${deps[@]}"
do
    apt install "$dep" -y
done 


pip install ansible-lint=3.4.23
wget $packer_url -O /tmp/packer.zip; unzip /tmp/packer -d /usr/sbin/
wget $terraform_url -O /tmp/terraform.zip; unzip /tmp/terraform.zip -d /usr/sbin/
wget $tflint_url -O /tmp/tflint.zip; unzip /tmp/tflint.zip -d /usr/sbin/

