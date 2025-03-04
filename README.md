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
However, attempting to build `broken/` fails, see further.

```shell

```
