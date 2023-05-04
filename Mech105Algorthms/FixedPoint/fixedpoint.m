% Define the function to be solved
f = @(x) sin(sqrt(x)); 

% Define the initial guess and stopping criterion
x0 = 0.5;
ea_target = 0.01; % 0.01% relative error

% Initialize variables
x_prev = x0;
x_next = f(x_prev);
ea = inf;
n = 0;

% Loop until stopping criterion is met
while ea > ea_target
    % Update the variables
    x_prev = x_next;
    x_next = f(x_prev);
    % Calculate the approximate relative error
    ea = abs((x_next - x_prev) / x_next) * 100;
    n = n+1;
    a = 0:n;
    a(n) = ea;
end

% Display the final result
fprintf('The root of the function is approximately %.4f\n', x_next);
fprintf('this is the array of ea', a)


