#!/bin/bash

# Description: Validate terraform templates
# Maintainter: Yurii Fisakov, fisakov.root@gmail.com

# Show used checker versions
ansible-lint --version

cd ansible/playbooks || exit
find . -name '*.yml' -print0 | xargs -n 1 -0 ansible-lint
