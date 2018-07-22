#!/bin/bash

# Description: Validate terraform templates
# Maintainter: Yurii Fisakov, fisakov.root@gmail.com

# Show used checker versions
ansible-lint --version

cd ansible/playbooks || exit
find . -name '*.yml' -exec ansible-lint {} \;
