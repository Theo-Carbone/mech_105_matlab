clear


%xl = 1;
%xu = 1.3;

xl = -1;
xu = 1;

%es = 0.00000000001;
%maxit = 1000;

%func = @(x) 5*x^2 + 3*x - 9;
%func = @(x) ((1/5)*x^2 + 3*x - 9) * (x-2);
func = @(x) x^3;
%func =  ((2*40*(x.^(5/2)))/5) + ((1/2)*40000*(x.^2)) - ...
    %(9.81*95.*x) - (95*9.81*0.84);


%(func(xr) * -1 < 0) == (func(xu) * -1 < 0)...
            %|| (func(xr) * -1 > 0) == (func(xu) * -1 > 0)
%x =  1.0748;
%f = 5*x^2 + 3*x - 9

%[root] = Bisect2(xl,xu,func)

%txr = xr;
    %xrt = xu - ((func(xu)*(xl-xu))/(func(xl) - func(xu)));
    %xrrt = (abs(((xrt-txr))/xrt)) * 100;
