#!/usr/bin/env bash

# Display all commands before executing them.
set -o errexit
set -o errtrace

mkdir -p zipped
tar --directory llvm-project/build/ --create --xz --verbose --file zipped/llvm.tar.xz .
ls -lh zipped/llvm.tar.xz
