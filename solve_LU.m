function [x,L,U] = solve_LU( A,b )
%Solve a system of equations using LU.
%   Input
%       A-Coefficences Matrix
%       b-Solution Matrix
%   Output
%       x-Solutions to the systems of equations.
%       L-Upper tringle
%       U-Lower triangle
%
%The input matrix "A" must be a square matrix with size (n,n). Input matrix
%"b" must be a single column matrix with 'n' number of rows. 


%Checks the size of the matrixs
[n]=size(A);
[N]=size(b);
%Makes sure the A matrix is a square matrix
if n(1)~=n(2);
    error('The A matrix is not a square matrix.')
%Makes sure that the b matrix has enough columns
elseif n(1)~=N(1)
    error('Matrix b does not have enought columns.')
end
%Makes sure there is no zero in the diagonal of the A matrix
for I=1:n
    if A(I,I)==0
        error('There is a zero in the dagonial of the A matrix.')
    end
end
[L,U] = crout_LU( A );
[y] = forward_elim( L,b );
[x] = backward_elim(U,y);

end

