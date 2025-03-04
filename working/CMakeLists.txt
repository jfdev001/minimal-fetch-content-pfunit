cmake_minimum_required(VERSION 3.15)

project(
    TestPFUNIT
    VERSION 0.1.0 
    LANGUAGES Fortran
)

include(FetchContent)
enable_testing()
set(PFUNIT_VERSION "v4.9.0")
FetchContent_Declare(
  PFUNIT
  GIT_REPOSITORY "https://github.com/Goddard-Fortran-Ecosystem/pFUnit"
  GIT_TAG ${PFUNIT_VERSION}
)  
FetchContent_MakeAvailable(PFUNIT)

add_subdirectory(src)
add_subdirectory(test)
