MODULE Square_mod

    IMPLICIT NONE

CONTAINS

    PURE REAL FUNCTION square(x)
        REAL, INTENT(in) :: x
        square = x**2
    END FUNCTION square

END MODULE Square_mod

