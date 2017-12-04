#!/usr/bin/env bash

#set -x

CPUS=$(lscpu | grep "^CPU(s):" | sed s/"CPU(s):                "//)

CURRENT_DIR="$(pwd)"
SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "${SCRIPTS_DIR}")"
STAGING_DIR="${PROJECT_DIR}/staging"
BUILD_DIR=${BUILD_DIR:-${PROJECT_DIR}/build}
LOG_FILE=${LOG_FILE:-${PROJECT_DIR}/bench.log}

cd "${PROJECT_DIR}"
./cutelyst --restart --server --app-file "${BUILD_DIR}/petstore/src/libpetstore.so" -- --chdir .. 1>cutelyst.log 2>&1 &
sleep 2
artillery quick --count 100 -n 200 http://localhost:3000/v2/pet/1 2>&1 | tee -a "${LOG_FILE}"
pkill cutelyst
cd "${CURRENT_DIR}"

# artillery quick --help
#  Usage: quick [options]
#
#  Run a quick test without writing a test script
#
#  Options:
#
#    -h, --help                   output usage information
#    -r, --rate <number>          New arrivals per second
#    -c, --count <number>         Fixed number of arrivals
#    -d, --duration <seconds>     Duration of the arrival phase
#    -n, --num <number>           Number of requests each new arrival will send
#    -t, --content-type <string>  Set content-type (defaults to application/json],
#    -p, --payload <path>         Set payload file (CSV)
#    -o, --output <path>          Set file to write stats to (will output to stdout by default)
#    -k, --insecure               Allow insecure TLS connections, e.g. with a self-signed cert
#    -q, --quiet                  Do not print anything to stdout
