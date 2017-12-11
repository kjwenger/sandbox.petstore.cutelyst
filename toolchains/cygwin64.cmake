set(CMAKE_SYSTEM_NAME CYGWIN)
set(CMAKE_LEGACY_CYGWIN_WIN32 0)

# specify the cross compiler
set(CMAKE_C_COMPILER /usr/bin/x86_64-pc-cygwin-gcc)
set(CMAKE_CXX_COMPILER /usr/bin/x86_64-pc-cygwin-g++)
set(CMAKE_Fortran_COMPILER /usr/bin/x86_64-pc-cygwin-gfortran)
set(CMAKE_RC_COMPILER /usr/bin/x86_64-pc-cygwin-windres)
set(CMAKE_AR:FILEPATH /usr/bin/x86_64-pc-cygwin-ar)
set(CMAKE_RANLIB:FILEPATH /usr/bin/x86_64-pc-cygwin-ranlib)

# where is the target environment
set(CMAKE_FIND_ROOT_PATH /usr/x86_64-pc-cygwin/sys-root/usr)

# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(PKG_CONFIG_EXECUTABLE /usr/bin/x86_64-pc-cygwin-pkg-config)
set(PKGCONFIG_EXECUTABLE /usr/bin/x86_64-pc-cygwin-pkg-config)

# FindQt4.cmake queries qmake to get information,
# which doesn't work when crosscompiling
set(QT_QMAKE_EXECUTABLE /usr/bin/x86_64-pc-cygwin-qmake)
set(QT_MOC_EXECUTABLE   /usr/bin/x86_64-pc-cygwin-moc)
set(QT_RCC_EXECUTABLE /usr/bin/x86_64-pc-cygwin-rcc)
set(QT_UIC_EXECUTABLE /usr/bin/x86_64-pc-cygwin-uic)
set(QT_UIC3_EXECUTABLE /usr/bin/x86_64-pc-cygwin-uic3)
set(QT_LRELEASE_EXECUTABLE /usr/bin/x86_64-pc-cygwin-lrelease)
set(QT_LUPDATE_EXECUTABLE /usr/bin/x86_64-pc-cygwin-lupdate)
set(QT_DBUSCPP2XML_EXECUTABLE /usr/bin/x86_64-pc-cygwin-qdbuscpp2xml)
set(QT_DBUSXML2CPP_EXECUTABLE /usr/bin/x86_64-pc-cygwin-qdbusxml2cpp)
set(QT_HEADERS_DIR ${CMAKE_FIND_ROOT_PATH}/include)
set(QT_LIBRARY_DIR ${CMAKE_FIND_ROOT_PATH}/lib)
