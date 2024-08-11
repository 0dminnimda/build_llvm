#!/usr/bin/env bash

# Display all commands before executing them.
set -o errexit
set -o errtrace

BUILD_TYPE=MinSizeRel # Release # RelWithDebInfo

cd llvm-project
cmake -S llvm -B build -G Ninja \
    -DCMAKE_C_COMPILER=$(which gcc) \
    -DCMAKE_CXX_COMPILER=$(which g++) \
    -DCMAKE_BUILD_TYPE="$(BUILD_TYPE)" \
    -DLLVM_ENABLE_PROJECTS='clang' \
    -DLLVM_TARGETS_TO_BUILD='X86'
    # -DLLVM_PARALLEL_COMPILE_JOBS=4
    # -DLLVM_USE_LINKER=mold  # should be the default linker as per setup-mold
cmake --build build #  -j 4 by default ninja should use all available cpus
