function [I] = Simpson(x,y)

if length(x) ~= length(y)
    error('x and y much be same length')
end

space = diff(x);
even = all(space == space(1));
if even == 0
    error('Imput is not evenly spaced')
end



if rem(length(x),2) ~= 0 || length(x) == 2


    n = length(x)-1;
    h = (x(end) - x(1))/n;
    en = 2:2:n(end);
    on = 3:2:n(end);

    if n > 1

        I = (1/3)*h * (y(1) + 4 * sum(y(en)) + 2 * sum(y(on)) + y(end));

    else
        warning('Trapazoid rule will be applied')
        I = (x(end) - x(1)) * (y(1)+y(end))/2;


    end

else

    warning('Trapazoid rule will be applied')
    n = length(x)-2;
    h = (x(end-1) - x(1))/n;
    en = 2:2:n(end);
    on = 3:2:n(end);

    S = (1/3)*h * (y(1) + 4 * sum(y(en)) + 2 * sum(y(on)) + y(end-2));

    T = (x(end) - x(end-1))/2 * (y(end-1) + y(end));

    I = S + T;






end