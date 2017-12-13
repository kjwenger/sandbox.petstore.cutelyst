set(CMAKE_SYSTEM_NAME Windows)
set(MULTIARCH x86_64-w64-mingw32)

# cross compilers to use for C, C++ and Fortran
set(CMAKE_C_COMPILER ${MULTIARCH}-gcc)
set(CMAKE_CXX_COMPILER ${MULTIARCH}-g++)
set(CMAKE_Fortran_COMPILER ${MULTIARCH}-gfortran)
set(CMAKE_RC_COMPILER ${MULTIARCH}-windres)

# target environment on the build host system
set(CMAKE_FIND_ROOT_PATH /usr/${MULTIARCH})

# modify default behavior of FIND_XXX() commands
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)