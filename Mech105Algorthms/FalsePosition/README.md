False Position MATLAB algorthm

The False Position method works by bracketing by starting with an upper and lower bound bracketing the root then making a secant line using these bounds. This method can be extremely accurate on the first iteration but is also vulnerable to failure if the upper and lower bounds do not closely bracket the root. 

Inputs:
func - the function being evaluated
xl - the lower guess
xu - the upper guess
es - the desired relative error defaults to 0.0001%
maxit - the maximum number of iterations to use defaults to 200

Outputs:
root - the estimated root location
fx - the function evaluated at the root location
ea - the approximate relative error (%)
iter - how many iterations were performed

To use the function first find an estimation of the root, becuause The False Position method is a closed bracketing method the lower and upper guesses must bracket the root. The function evaluated at the lower bound must be oppsite sign of the function evaluated at the upper bound. If this is not the case an error message will appear when the function is run. Next, enter the stopping criteria and desired maximum iterations. The function can be run with all inputs, with out the maxit input, with out both the max iteration and es inputs, but not with the es input and with out the maxit input.
