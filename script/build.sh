#!/usr/bin/env bash

#set -x

CURRENT_DIR="$(pwd)"
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPTS_DIR}")"
STAGING_DIR="${PROJECT_DIR}/staging"
BUILD_DIR=${BUILD_DIR:-${PROJECT_DIR}/build}
CMAKE_ARGS=${CMAKE_ARGS:-}

cd "${PROJECT_DIR}"
mkdir -p "${BUILD_DIR}"
pushd "${BUILD_DIR}"
rm -Rf *
cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
      ${CMAKE_ARGS} \
      ..
make -j
popd
cd "${CURRENT_DIR}"
