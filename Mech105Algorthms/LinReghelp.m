clear
x = [1896 1900 1904 1908 1912 1916 1920 1924 1928 1932 1936 1940 1944 1948 1952 1956 1960 1964 1968 1972 1976 1980 1984 1988 1992 1996 2000 2004 2008 2012 2016];
y = [273.2 246 245.4 243.4 236.8 0 241.8 233.6 233.2 231.2 227.8 0 0 229.8 225.1 221.2 215.6 218.1 214.9 216.3 219.2 218.4 212.53 215.96 220.12 215.78 212.32 214.18 213.11 214.08 230];
%x = [1 2 3 4 5 6 ];
%y = [1 2 1.3 3.75 2.5 100];
% We should filter out x=6,y=100!
tic
[fX, fY, slope, intercept, Rsquared] = LinReg(x,y)
toc

% Actual values for your comparison:
xAnswer = [1 3 2 5 4];
yAnswer = [1 1.3 2 2.5 3.75];
slopeAnswer = 0.4750;
interceptAnswer = 0.6850;
RsquaredAnswer = 0.4758;

% Will show a 1 if your result is within 1.e-12 of the answer.
%fprintf("fX is close to xAnswer? %d\n", abs(fX-xAnswer)<1.e-12) % Since fX is an array, will print one line per element.
%fprintf("fY is close to yAnswer? %d\n", abs(fY-yAnswer)<1.e-12) % Since fY is an array, will print one line per element.
%fprintf("slope is close to slopeAnswer? %d\n", abs(slope-slopeAnswer)<1.e-12)
%fprintf("intercept is close to interceptAnswer? %d\n", abs(intercept-interceptAnswer)<1.e-12)
%fprintf("Rsquared is close to RsquaredAnswer? %d\n", abs(Rsquared-RsquaredAnswer)<1.e-12)