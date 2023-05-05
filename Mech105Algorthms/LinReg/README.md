Linear Regression MATLAB Algorithm

Linear regression is used for modeling the relationship between independent and dependent variables. It is an important tool for the interpretation of data sets. To do this it fits a line that best models the data set and calculates the slope of this line. The R^2 value, also known as the coefficient of determination, is a measure of the accuracy of the regression line. It is found by taking the absolute value of the sum of the squares between each data point and the regression line. 

Inputs: 
x - values of the data set
y - values of the data set

Outputs:
fX - list of x values
fY - list of y values
slope - slope from the linear regression
Intercept from the linear regression (b in )
Rsquared - coefficient of determination

To use the function input x and y values in the form of vector matrices. Matrix x and y must be of equal length or function will output an error. If the data sets are of equal length the function first removes any outliers in the dataset. The function will then output the sorted x and y values with outliers removed, the slope of the regression line, the intercept of the mean of the dataset and regression line, and the coefficient of determination.
