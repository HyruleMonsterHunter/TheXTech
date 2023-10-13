# Major
set(THEXTECH_VERSION_1 1)
# Minor
set(THEXTECH_VERSION_2 3)
# Revision
set(THEXTECH_VERSION_3 6)
# Patch
set(THEXTECH_VERSION_4 1)
# Type of version: "-alpha","-beta","-dev", or "" aka "release"
set(THEXTECH_VERSION_REL "")

add_definitions(-DTHEXTECH_VERSION_1=${THEXTECH_VERSION_1})
add_definitions(-DTHEXTECH_VERSION_2=${THEXTECH_VERSION_2})
add_definitions(-DTHEXTECH_VERSION_3=${THEXTECH_VERSION_3})
add_definitions(-DTHEXTECH_VERSION_4=${THEXTECH_VERSION_4})
add_definitions(-DTHEXTECH_VERSION_REL=${THEXTECH_VERSION_REL})

set(THEXTECH_VERSION_STRING "${THEXTECH_VERSION_1}.${THEXTECH_VERSION_2}")

if(NOT ${THEXTECH_VERSION_3} EQUAL 0 OR NOT ${THEXTECH_VERSION_4} EQUAL 0)
    string(CONCAT THEXTECH_VERSION_STRING "${THEXTECH_VERSION_STRING}" ".${THEXTECH_VERSION_3}")
endif()

if(NOT ${THEXTECH_VERSION_4} EQUAL 0)
    string(CONCAT THEXTECH_VERSION_STRING "${THEXTECH_VERSION_STRING}" ".${THEXTECH_VERSION_4}")
endif()

if(NOT "${THEXTECH_VERSION_REL}" STREQUAL "")
    string(CONCAT THEXTECH_VERSION_STRING "${THEXTECH_VERSION_STRING}" "${THEXTECH_VERSION_REL}")
endif()

message("== TheXTech version ${THEXTECH_VERSION_STRING} ==")
