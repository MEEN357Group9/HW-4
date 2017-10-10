function [ L,U] = crout_LU( A )
%UNTITLED4 Summary of this function goes here
%   This creates the L and U matrix

n=size(A);%check

L = zeros(n);
U = eye(n);

TermL = zeros(1);
TermU = zeros(1);

for k = 1:n
    for i = k:n
        for m = 1:k-1
            TermL(m) = L(i,m)*U(m,k);
        end
        L(i,k) = A(i,k) - sum(TermL);
    end
    for j = k+1:n
        for m = 1:k-1
            TermU(m) = L(k,m)*U(m,j);
        end
        U(k,j) = (A(k,j) - sum(TermU))/L(k,k);
    end
end

end

