# Bisection MATLAB Algorthm

Bisection is a closed root finding method which can be used to approximate the root of complex functions when given upper and lower bounds which bracket the root. The bisection is less efficient than other root finding methods but is very reliable and rarely breaks down.

Inputs:
func - a function with at least one real root in the form func = @(x)...             
xl - lower bound          
xu - upper bound                
es (optional) - stopping criteria        
iter (optional) - maximum number of iterations allowed          

Outputs:      
root - zero of the function between lx and lu      
fx - function evaluated at the root estimation        
iter - number of iterations done       
ea - error of the root approximation        

To use the function first find a general estimation of the root, because bisection is a closed bracketing method the lower and upper guesses must bracket the root. The function evaluated at the lower bound must be the opposite to the sign of the function evaluated at the upper bound. If this is not the case the function will output an error message. Next, enter the stopping criteria and desired maximum iterations. The function can be run with a number of different input combinations: with all inputs, without the maxit input, without both the maxit and es inputs, but not with the es input and without the maxit input.
