The False Position is useful for finding roots

It works by bracketing by starting with an upper and lower bound bracketing the root then making a secant line using these bounds. This method can be extremely accurate on the first iteration but is also vulnerable to failure if the upper and lower bounds do not closely bracket the root. 

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
