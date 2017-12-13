set(CMAKE_SYSTEM_NAME CYGWIN)
set(MULTIARCH x86_64-pc-cygwin)
set(CMAKE_LEGACY_CYGWIN_WIN32 0)

# specify the cross compiler
set(CMAKE_C_COMPILER ${MULTIARCH}-gcc)
set(CMAKE_CXX_COMPILER ${MULTIARCH}-g++)
set(CMAKE_Fortran_COMPILER ${MULTIARCH}-gfortran)
set(CMAKE_RC_COMPILER ${MULTIARCH}-windres)
set(CMAKE_AR:FILEPATH ${MULTIARCH}-ar)
set(CMAKE_RANLIB:FILEPATH ${MULTIARCH}-ranlib)

# where is the target environment
set(CMAKE_FIND_ROOT_PATH /usr/x86_64-pc-cygwin/sys-root/usr)

# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(PKG_CONFIG_EXECUTABLE ${MULTIARCH}-pkg-config)
set(PKGCONFIG_EXECUTABLE ${MULTIARCH}-pkg-config)

# FindQt4.cmake queries qmake to get information,
# which doesn't work when crosscompiling
set(QT_QMAKE_EXECUTABLE ${MULTIARCH}-qmake)
set(QT_MOC_EXECUTABLE   ${MULTIARCH}-moc)
set(QT_RCC_EXECUTABLE ${MULTIARCH}-rcc)
set(QT_UIC_EXECUTABLE ${MULTIARCH}-uic)
set(QT_UIC3_EXECUTABLE ${MULTIARCH}-uic3)
set(QT_LRELEASE_EXECUTABLE ${MULTIARCH}-lrelease)
set(QT_LUPDATE_EXECUTABLE ${MULTIARCH}-lupdate)
set(QT_DBUSCPP2XML_EXECUTABLE ${MULTIARCH}-qdbuscpp2xml)
set(QT_DBUSXML2CPP_EXECUTABLE ${MULTIARCH}-qdbusxml2cpp)
set(QT_HEADERS_DIR ${CMAKE_FIND_ROOT_PATH}/include)
set(QT_LIBRARY_DIR ${CMAKE_FIND_ROOT_PATH}/lib)
