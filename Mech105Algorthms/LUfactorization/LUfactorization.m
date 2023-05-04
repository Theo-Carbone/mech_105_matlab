function [L, U, P] = LUfactorization(A)
w = height(A);
p = zeros(w,w);

[h,j] = size(A);
if h~=j
    error('A matrix not square')
end

p = eye(w);
L = p;

w = w - 1;
for i = 1:w

    
    [~,row] = max(abs(A(i:w+1 ,i)));
    
    row = row + i - 1;


    if row ~= i
        r = A(row,i:w+1);
        rr = p(row,:);
        rrr = L(row,1:i-1);
        A(row,i:w+1) = A(i,i:w+1);
        p(row,:) = p(i,:);
        L(row,1:i-1) = L(i,1:i-1);
        A(i,i:w+1) = r;
        p(i,:) = rr;
        L(i,1:i-1) = rrr;

    end

    for iii = i+1:w+1
    C = A;


    C = C(i, i:w+1) .* (A(iii,i)/A(i,i));
    L(iii,i) = (A(iii,i)/A(i,i));
    A(iii, i:w+1) = A(iii, i:w+1) - C;
    end
end

    
P = p;
U = A;
end

