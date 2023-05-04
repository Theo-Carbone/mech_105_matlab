%function [fX, fY, slope, intercept, Rsquared] = LinReg(x,y)
%linearRegression Computes the linear regression of a data set

if length(x) ~= length(y)
    error('x and y not same size')
end

[sortedY, sortOrder] = sort(y);
sortedX = x(sortOrder);

yv = sortedY;
xv = sortedX;
ii = 0;
iiii = 0;
 
n = length(xv);

L1 = floor((n+1)/4);

L3 = floor((3.*n+1)/4);

Q1 = yv(L1);
Q3 = yv(L3);


IQR = Q3-Q1;

LB = Q1 - 1.5 * IQR;
UB = Q3 + 1.5 * IQR;

for iii = 1:n

    if yv(iii) > LB && yv(iii) < UB
        iiii = iiii + 1;

    end
end

yvv = zeros(length(iiii));
xvv = zeros(length(iiii));

for i = 1:n
    if yv(i) > LB && yv(i) < UB
        ii = ii + 1;

        yvv(ii) = yv(i);
        xvv(ii) = xv(i);
    end
end

n = length(xvv);
sx = sum(xvv);
sy = sum(yvv);
sx2 = sum(xvv.^2);
sxy = sum(xvv.*yvv);

a1 = (n*sxy - sx*sy) / (n*sx2 - sx^2);
a0 = mean(yvv) - a1*mean(xvv);

Sr = sum((yvv-a0-a1*xvv).^2);
St = sum((yvv-mean(yvv)).^2);

R2 = (St-Sr)/St;






%   Outputs:
%     1. fX: x-values with outliers removed
fX = xvv;
%     2. fY: y-values with outliers removed
fY = yvv;
%     3. slope: slope from the linear regression y=mx+b
slope = a1;
%     4. intercept: intercept from the linear regression y=mx+b
intercept = a0;
%     5. Rsquared: R^2, a.k.a. coefficient of determination
Rsquared = R2;

end
