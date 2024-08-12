#!/usr/bin/env bash

# Display all commands before executing them.
set -o errexit
set -o errtrace

mkdir -p artifacts
tar --directory llvm-project/build/ --create --xz --verbose --file artifacts/llvm.tar.xz .
ls -lh artifacts/llvm.tar.xz
