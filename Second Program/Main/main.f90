      PROGRAM temp_conversion
    
    ! implict statement
      IMPLICIT NONE
    
    ! declare variables (4-byte integer type)
      INTEGER*4:: deg_f, deg_c, k
    
    ! print statement and read data
      PRINT*, "Please enter temperature in F"
      READ*, DEG_F
    
    ! compute temperature in Centigrade
      DEG_C = 5 * (DEG_F - 32.)/9.
      PRINT*, "This is equal to", DEG_C, "C"
    
    ! compute temperature in Kelvin
      K = DEG_C + 273
      PRINT *, "AND", k , "KELVIN"
      
END PROGRAM temp_conversion