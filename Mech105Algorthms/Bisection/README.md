Bisection is a close root finding method

This MATLAB function can be used to find the root of a function (f(x)) when two data points on either side of the function are known


Inputs:
func - a funtion with at least one real root in the form func = @(x)...
xl - lower bound
xu - upper bound
es (optional) - stopping criteria

Outputs:
root - zero of the function between lx and lu
fx - function evaluated at the root estimation
iter - number of iterations done
ea - error of the root estimation

To use the function first find an estimation of your root, becuase bisection is a closed bracketing method the lower and upper guesses must bracket the root. The function evaluated at the lower bound must be oppsite sign of the function evaluated at the upper bound. If this is not the case an error message will appear when the function is run. Next, enter the stopping criteria and desired maximum iterations. The function can be run with all inputs, with out the maxit input, with out both the max iteration and es inputs, but not with the es input and with out the maxit input.
