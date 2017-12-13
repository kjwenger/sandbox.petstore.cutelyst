#!/usr/bin/env bash

#set -x

CURRENT_DIR="$(pwd)"
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPTS_DIR}")"

cd "${PROJECT_DIR}"
BUILD_DIR="${PROJECT_DIR}/build-debug"         LOG_FILE="${PROJECT_DIR}/bench-debug.log"         "${SCRIPTS_DIR}/bench.sh"
BUILD_DIR="${PROJECT_DIR}/build-release"       LOG_FILE="${PROJECT_DIR}/bench-release.log"       "${SCRIPTS_DIR}/bench.sh"
BUILD_DIR="${PROJECT_DIR}/build-release-debug" LOG_FILE="${PROJECT_DIR}/bench-release-debug.log" "${SCRIPTS_DIR}/bench.sh"
BUILD_DIR="${PROJECT_DIR}/build-compact"       LOG_FILE="${PROJECT_DIR}/bench-compact.log"       "${SCRIPTS_DIR}/bench.sh"
cd "${CURRENT_DIR}"
