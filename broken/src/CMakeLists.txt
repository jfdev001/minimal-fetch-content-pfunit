add_library(sut
    square.f90
)

set_target_properties(sut 
    PROPERTIES
    Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
)

# Allows successful linking of sut in the tests/CMakeLists.txt
target_include_directories(sut 
    PUBLIC ${CMAKE_CURRENT_BINARY_DIR}
)
