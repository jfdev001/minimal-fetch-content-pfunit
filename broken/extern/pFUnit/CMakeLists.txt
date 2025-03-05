include(FetchContent)
set(PFUNIT_VERSION "v4.9.0")
FetchContent_Declare(
  PFUNIT
  GIT_REPOSITORY "https://github.com/Goddard-Fortran-Ecosystem/pFUnit"
  GIT_TAG ${PFUNIT_VERSION}
)  
FetchContent_MakeAvailable(PFUNIT)
