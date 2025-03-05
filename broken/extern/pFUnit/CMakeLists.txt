include(FetchContent)
#set(PFUNIT_VERSION "v4.9.0")
FetchContent_Declare(
  PFUNIT
  GIT_REPOSITORY "https://github.com/Goddard-Fortran-Ecosystem/pFUnit"
  GIT_TAG 72f9f47124acfe8ed6c110ad8cb1bcd2af38fdc5 
)  
FetchContent_MakeAvailable(PFUNIT)
