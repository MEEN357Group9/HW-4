function [y ] = forward_elim( L,b )
%Performs a forward elimination given L and b
%   Detailed explanation goes here

% Determines the sizes of the matrices
A = size(L);
n = A(1);
B = size(b);

% Checks for zeros in L
H = zeros(1,n);
for u = 1:n
    H(u) = L(u,u);
    if H(u) == 0
        error('L cannot have 0 in the diagonal');
end


if A(1) ~= A(2)
    error('L must be a n X n matrix.');
elseif B(1) ~= n || B(2) ~= 1
    error('b must be a column vector compatible with L.');
end
y = zeros(n);

for i = 1:n
    summation = 0;
    if i == 1
    else
        for j = 1:i-1
            summation = summation + L(i,j)*y(j);
        end
    end
    y(i) = (b(i)- summation)/L(i,i);
end


end

