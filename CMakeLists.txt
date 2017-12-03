cmake_minimum_required(VERSION 2.6)
project(sandbox-petstore-cutelyst)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")
set(CMAKE_PREFIX_PATH "/opt/Qt5.9.3/5.9.3/gcc_64/")

add_subdirectory(thirdparty)

find_package(Qt5 COMPONENTS Core Network Sql REQUIRED)
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} "${CMAKE_SOURCE_DIR}/staging")
find_package(CutelystQt5 REQUIRED)

add_subdirectory(petstore)
