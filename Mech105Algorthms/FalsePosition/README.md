# False Position MATLAB algorithm

The False Position is a closed bracketing method which can be used to approximate the root of a function. It does this by starting with an upper and lower bound that brackets the root then making a secant line using these bounds. When used correctly, this method is extremely accurate on the first iteration but is also vulnerable to crashing if the upper and lower bounds do not closely bracket the root.

Inputs:
- func - the function being evaluated
- xl - the lower guess
xu - the upper guess
es - the desired relative error defaults to 0.0001%
maxit - the maximum number of iterations to use defaults to 200

Outputs:
root - the estimated root location
fx - the function evaluated at the root location
ea - the approximate relative error (%)
iter - how many iterations were performed

To use the function first find an estimation of the root, because The False Position method is a closed bracketing method the lower and upper guesses must closely bracket the root. The function evaluated at the lower bound must be the opposite sign of the function evaluated at the upper bound. If this is not the case the function will output an error message. Next, enter the stopping criteria and desired maximum iterations. The function can be run with a number of different input combinations: with all inputs, without the maxit input, without both the maxit and es inputs, but not with the es input and without the maxit input.
