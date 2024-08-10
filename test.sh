#!/usr/bin/env bash

# Display all commands before executing them.
set -o errexit
set -o errtrace

ninja -C build check-llvm
