#!/usr/bin/env bash

rsync --exclude "atom/package-list.txt" \
  -avh --no-perms atom/ ~/.atom;

apm install --packages-file atom/package-list.txt

# for linter-proselint. Requires pip to be installed
pip install proselint
