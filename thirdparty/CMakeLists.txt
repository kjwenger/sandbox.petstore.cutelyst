cmake_minimum_required(VERSION 2.6)
project(sandbox-petstore-cutelyst)

set(CMAKE_INSTALL_PREFIX ${CMAKE_SOURCE_DIR}/staging)

include(ExternalProject)

set(CMAKE_ARGS -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH} -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX})
ExternalProject_Add(cutelyst
        GIT_REPOSITORY https://github.com/cutelyst/cutelyst.git
        CMAKE_ARGS ${CMAKE_ARGS}
        INSTALL_DIR ${CMAKE_INSTALL_PREFIX}
)
