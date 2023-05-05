# Simpson's 1/3 Rule MATLAB Algorithm

Simpson's 1/3 Rule is a numerical integration method in the family of the Newton-Cotes formulas that can be used to approximate definite integrals. It works by dividing the domain of the integral into subintervals and calculating the area of these subintervals.

Inputs:          
x - list of x values         
y - list of y values           

Outputs:         
I - estimation of the integral         

To use the function input x and y values in the form of vector matrices. Matrix x and y must be of equal length or function will output an error. For data sets of odd length, the function will use Simpson's 1/3 rule to approximate the integral. If a data set of even length is run, the function will use Simpson's 1/3 rule to the integral to approximate n-1 sub intervals, then use the trapezoidal rule to approximate the last sub interval. The function will output an approximation of the integral and a warning message stating that the trapezoidal rule was employed for the final subinterval. If if the x and y matrices are of length 2, the function will use the trapezoidal rule alone to approximate the integral. The function will output the approximation of the integral and a warning message stating that only the trapezoidal rule was used.
