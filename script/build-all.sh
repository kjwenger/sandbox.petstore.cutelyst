#!/usr/bin/env bash

#set -x

CPUS=$(lscpu | grep "^CPU(s):" | sed s/"CPU(s):                "//)

CURRENT_DIR="$(pwd)"
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPTS_DIR}")"

cd "${PROJECT_DIR}"
BUILD_DIR="${PROJECT_DIR}/build-debug"         CMAKE_ARGS="-DCMAKE_BUILD_TYPE=DEBUG"          "${SCRIPTS_DIR}/build.sh"
BUILD_DIR="${PROJECT_DIR}/build-release"       CMAKE_ARGS="-DCMAKE_BUILD_TYPE=RELEASE"        "${SCRIPTS_DIR}/build.sh"
BUILD_DIR="${PROJECT_DIR}/build-release-debug" CMAKE_ARGS="-DCMAKE_BUILD_TYPE=RELWITHDEBINFO" "${SCRIPTS_DIR}/build.sh"
BUILD_DIR="${PROJECT_DIR}/build-compact"       CMAKE_ARGS="-DCMAKE_BUILD_TYPE=MINSIZEREL"     "${SCRIPTS_DIR}/build.sh"
cd "${CURRENT_DIR}"
