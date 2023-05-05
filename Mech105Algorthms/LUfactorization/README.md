# LU factorization MATLAB algorithm

LU factorization takes a matrix A and breaks it into three matrices: L, U, and P. Matrix L is an upper-triangular matrix which is useful for solving a system of equations. Matrix U contains the coefficients which were used to create matrix L. Matrix P, the pivot matrix, tracks how matrix A has been pivoted to create matrix L. The product of matrices A and P is equivalent to the product of matrices L and U.

Inputs:  
A - coefficient matrix     

Outputs:             
L - lower triangular matrix, with 1's along the diagonals         
U - upper triangular matrix         
P - the pivot matrix            

To use this function take a n by n matrix (A) and run the function. The output will be matrices A into matrices L, U, and P.
