file(GLOB_RECURSE petstore_SRCS *.cpp *.h)

set(petstore_SRCS
    ${petstore_SRCS}
    ${TEMPLATES_SRC}
)

# Create the application
add_library(petstore SHARED ${petstore_SRCS})

# Link to Cutelyst
target_link_libraries(petstore
    Cutelyst::Core
    Cutelyst::StaticSimple
    Qt5::Core
    Qt5::Network
)

