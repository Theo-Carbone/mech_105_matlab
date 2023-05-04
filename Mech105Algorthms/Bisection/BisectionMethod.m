function [root,fx,ea,iter]=BisectionMethod(func,xl,xu,es,maxit)

if nargin<3
    error('at least 3 imput arguments rquired')
end

test = func(xl) * func(xu);

if test>0
    error('no sign change')
end

if nargin<4 || isempt(es)
    es = 0.0001;
end

if nargin<5 || isempt(maxit)
    maxit = 50;
end

iter = 0;
xr = xl;
ea = 100;
while (1)
    xrold = xr;
    xr = (xl + xu)/2;
    iter = iter + 1;
    if xr ~= 0
        ea = abs((xr - xrold/xr)) * 100;
    end

    test = func(xl)*func(xu);

    if test < 0
        xu = xr;
    elseif test > 0
            xu = xr;
    else
        ea = 0;
    end
    if ea <= es || inter >= maxit
    end 
end
    
root = xr;
fx = func(xr);










