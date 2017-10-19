function [y ] = forward_elim( L,b )
% Forward Elimination
%The inputs of this function are:
%   L-The L matrix inported from the Crout function.
%   b-The b matrix is a column from an identity matrix n X n
%Outputs
%   y-The y output is the value for the y values from the original
%   equations

% Determines the sizes of the matrices
A = size(L);
n = A(1);
B = size(b);

% Checks for zeros in L
H = zeros(1,n); % creates matrix so no slow computing
for u = 1:n % yay! it works
    H(u) = L(u,u);
    if H(u) == 0 % boo bad
        error('L cannot have 0 in the diagonal');
    end
end

% If all is good, continue
if A(1) ~= A(2) % uh oh not the same
    error('L must be a n X n matrix.');
elseif B(1) ~= n || B(2) ~= 1 % checks to see if b is column vector
    error('b must be a column vector compatible with L.');
end
y = zeros(n,1); % starts the matrix so no slow computing

for i = 1:n % For all the i's
    summation = 0; % starts summation
    
    % does forward elimination for each iteration
    if i == 1 % checks for special case for j = 0 which is not good for matrices
    else
        for j = 1:i-1 
            summation = summation + L(i,j)*y(j); % adds to the summation for the later part of elimination
        end
    end
    y(i) = (b(i)- summation)/L(i,i); % sets the value in y matrix
end


end

