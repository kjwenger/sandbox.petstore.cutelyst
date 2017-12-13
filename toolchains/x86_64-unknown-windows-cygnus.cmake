# This clang needs to be recent!
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)

if (CMAKE_CXX_COMPILER_VERSION VERSION_LESS 3.5)
    message(STATUS "Warning: clang version < 3.5.0 is known to be problematic")
endif()

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

add_definitions(-DCLANG_EXCEPTIONS)