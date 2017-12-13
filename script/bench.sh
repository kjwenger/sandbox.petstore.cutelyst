#!/usr/bin/env bash

#set -x

CURRENT_DIR="$(pwd)"
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPTS_DIR}")"
STAGING_DIR="${PROJECT_DIR}/staging"
BUILD_DIR=${BUILD_DIR:-${PROJECT_DIR}/build}
LOG_FILE=${LOG_FILE:-${PROJECT_DIR}/bench.log}

cd "${PROJECT_DIR}"
echo "" > "${LOG_FILE}"
"${SCRIPTS_DIR}/bench-artillery.sh"
"${SCRIPTS_DIR}/bench-wrk.sh"
cd "${CURRENT_DIR}"
