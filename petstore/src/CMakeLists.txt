file(GLOB_RECURSE petstore_SRCS
        ../include/*.hpp
        *.cpp
)

set(petstore_SRCS
        ${petstore_SRCS}
        ${TEMPLATES_SRC}
)

# Create the Application
add_library(petstore SHARED
        ${petstore_SRCS}
)

# Link to Cutelyst
target_link_libraries(petstore
        Cutelyst::Core
        Cutelyst::StaticSimple
        Qt5::Core
        Qt5::Network
)
target_include_directories(petstore PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/../include
)