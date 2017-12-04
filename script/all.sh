#!/usr/bin/env bash

#set -x

CPUS=$(lscpu | grep "^CPU(s):" | sed s/"CPU(s):                "//)

CURRENT_DIR="$(pwd)"
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPTS_DIR}")"
STAGING_DIR="${PROJECT_DIR}/staging"
BUILD_DIR="${PROJECT_DIR}/build"

cd "${PROJECT_DIR}"
"${SCRIPTS_DIR}/build.sh"
"${SCRIPTS_DIR}/run.sh"
cd "${CURRENT_DIR}"
