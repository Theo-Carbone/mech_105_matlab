function [root, fx, ea, iter] = FalsePosition(func, xl, xu, es, maxit)

if nargin < 4
    es = 0.0001;
    maxit = 200;
elseif nargin < 5
    maxit = 200;
end

if func(xl) * func (xu) > 0
    error('xl and xl not correct sign')
else

    xr = xu - ((func(xu)*(xl-xu))/(func(xl) - func(xu)));

    if func(xr) * func(xu) < 0
        xl = xr;
    else
        xu = xr;
    end
    iter = 1;

    txr = xr;
    xrt = xu - ((func(xu)*(xl-xu))/(func(xl) - func(xu)));

    if xrt ~= txr
        res = 100.1;

        while es < res && iter < maxit
            xrOld = xr;
            xr = xu - ((func(xu)*(xl-xu))/(func(xl) - func(xu)));

            if func(xr) * func(xu) < 0
                xl = xr;
            else
                xu = xr;
            end
            res = (abs(((xr-xrOld))/xr)) * 100;
            iter = iter+1;
        end

        ea = res;
    else

        ea = 0;
    end
    root = xr;
    fx = func(root);
end

