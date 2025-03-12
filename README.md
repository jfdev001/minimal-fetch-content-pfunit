# minimal-fetch-content-pfunit

Two minimal projects using `pFUnit` are shown. In `working/`, `pFUnit` is 
fetched in the toplevel `CMakeLists.txt`. This example runs as expected,
but has the toplevel `CMakeLists.txt` "polluted with a dependency."

```shell
# Working example of toplevel pfunit
(
cd working
cmake -S . -B build -DCMAKE_Fortran_COMPILER=mpif90
cmake --build build 
cd build
ctest -L myproject 
)
```

In `broken/`, `pFUnit` is placed  in the `extern` directory since this is 
structural more clear that the library is a dependency for testing. This is the 
same structure used in, for example,
[`fortran-lang/fftpack`](https://github.com/fortran-lang/fftpack/tree/main/dependencies).
However, attempting to build `broken/` fails, 

```shell
(
cd broken
cmake -S . -B build -DCMAKE_Fortran_COMPILER=mpif90
cmake --build build 
cd build
ctest -L myproject 
)
```

with the below error

> CMake Error: File /home/jf01/dev/minimal-fetch-content-pfunit/broken/test/.in does not exist.
CMake Error at build/_deps/pfunit-src/include/add_pfunit_ctest.cmake:70 (configure_file):
  configure_file Problem configuring file
Call Stack (most recent call first):
  test/CMakeLists.txt:1 (add_pfunit_ctest)

In `fixed/`, a commit in `pFUnit` is used that corresponds to a hot fix for the 
problem encountered in `broken/`.

```shell
(
cd fixed
cmake -S . -B build 
cmake --build build
cd build
ctest -L myproject
)
```

