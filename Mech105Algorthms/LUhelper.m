clear
clc
% Solve the system of equations in the form A*x = b
%   10*x1 + 2*x2 - x3 = 27
%   -3*x1 - 6*x2 + 2*x3 = -61.5
%   x1 + x2 + 5*x3 = -21.5
% Set up A for the given system
%A = [3 21 25 13 15; 23 0 21 11 13; 2 8 9 23 20; 20 1 29 24 21; 5 3 1 5 23];
A = [1 5 1 7; 2 4 3 9; 4 6 1 7 ; 7 8 9 10];

%A = [1, 2, -1; 
    %-3, -6, 2;
    %10, 1, 5];
%A = [2, 6, -1;-3, -1, 7; -8, 1 , -2];
%A = [3,4;2,1];
%Set up b
%b = [27; -61.5; -21.5];
%Solve for x
%x = A\b;

% Test your function
[L, U , P] = LUfactorization(A)

% How can you test the output of your function is correct?
% w = height(A);
% p = zeros(w,w);
% 
% for ii = 1:w
%     p(ii,ii) = 1;
% 
% end
% 
% w = w - 1;
% for i = 1:w
% 
%     m = max(A(:,i));
%     n = min(A(:,i));
% 
%     if abs(m) > abs(n)
%         f = find(A == m);
%         [row,~] = ind2sub(size(A), f);
% 
%     else
%         f = find(A == n);
%         [row,~] = ind2sub(size(A), f);
%     end
% 
% 
% 
% 
%     if row > i
%         r = A(row,1:end);
%         rr = p(row,1:end);
%         A(row,1:end) = A(i,1:end);
%         p(row,1:end) = p(i,1:end);
%         A(i,1:end) = r;
%         p(i,1:end) = rr;
% 
%     end
% 
%     
% 
% 
% end

    %g(i) = g(i) * (A(iii,i)/A(i,i));
    %b(i+1) = g(i) - g(i+1);

    %m = max(A(:,i));
    %n = min(A(:,i));

    %if abs(m) > abs(n)
        %f = find(A == m);
        %[row,~] = ind2sub(size(A), f);

    %else
        %f = find(A == n);
        %[row,~] = ind2sub(size(A), f);
    %end