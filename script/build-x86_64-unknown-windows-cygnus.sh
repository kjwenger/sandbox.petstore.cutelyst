#!/usr/bin/env bash

#set -x

CURRENT_DIR="$(pwd)"
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPTS_DIR}")"
MULTIARCH="x86_64-unknown-windows-cygnus"
CMAKE_TOOLCHAIN_FILE="${PROJECT_DIR}/toolchains/${MULTIARCH}.cmake"
CMAKE_ARGS="-DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE}"

cd "${PROJECT_DIR}"
CMAKE_ARGS="${CMAKE_ARGS}" "${SCRIPTS_DIR}/build.sh"
cd "${CURRENT_DIR}"
