#!/usr/bin/env bash

#set -x

CPUS=$(lscpu | grep "^CPU(s):" | sed s/"CPU(s):                "//)

CURRENT_DIR="$(pwd)"
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPTS_DIR}")"
STAGING_DIR="${PROJECT_DIR}/staging"
BUILD_DIR="${PROJECT_DIR}/build"

cd "${PROJECT_DIR}"
./cutelyst --restart --server --app-file "${BUILD_DIR}/petstore/src/libpetstore.so" -- --chdir .. 1>cutelyst.log 2>&1 &
sleep 2
artillery quick --count 100 -n 200 http://localhost:3000/v2/pet/1 2>&1 | tee "${PROJECT_DIR}/bench.log"
pkill cutelyst
cd "${CURRENT_DIR}"
