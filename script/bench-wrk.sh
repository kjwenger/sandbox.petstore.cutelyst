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
wrk -t12 -c400 -d30s http://localhost:3000/v2/pet/1 2>&1 | tee -a "${LOG_FILE}"
pkill cutelyst
cd "${CURRENT_DIR}"

# wrk --help
# Usage: wrk <options> <url>
#   Options:
#     -c, --connections <N>  Connections to keep open
#     -d, --duration    <T>  Duration of test
#     -t, --threads     <N>  Number of threads to use
#
#     -s, --script      <S>  Load Lua script file
#     -H, --header      <H>  Add header to request
#         --latency          Print latency statistics
#         --timeout     <T>  Socket/request timeout
#     -v, --version          Print version details
#
#   Numeric arguments may include a SI unit (1k, 1M, 1G)
#   Time arguments may include a time unit (2s, 2m, 2h)
