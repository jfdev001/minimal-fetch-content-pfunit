cmake_minimum_required(VERSION 3.15)

project(
    TestPFUNIT
    VERSION 0.1.0 
    LANGUAGES Fortran
)

add_subdirectory(src)

enable_testing()
add_subdirectory(extern)
add_subdirectory(test)
