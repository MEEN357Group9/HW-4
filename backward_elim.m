function [ x ] = backward_elim( U,y )
%Backwards Elimination
%The inputs of this function are:
%   U-The U matrix inported from the Crout function.
%   y-The y matrix is imported from the forward elimination function.
%Outputs
%   x-The x output is the value for the x values from the original
%   equations

%Checks the size of the matrixs
[n]=size(U);
[N]=size(y);
%Makes sure the U matrix is a square matrix
if n(1)~=n(2);
    error('The U matrix is not a square matrix.')
%Makes sure that the y matrix has enough columns
elseif n(1)~=N(1)
    error('Matrix y does not have enought columns.')
end
%Makes sure there is no zero in the diagonal of the U matrix
for I=1:n
    if U(I,I)==0
        error('There is a zero in the dagonial of the U matrix.')
    end
end
%Preforming the backwards substitution. 
n=n(1);
x=zeros(n,1);
summation=0;
for i=n:-1:1
    for j=i+1:n
        TermsU(i)=(U(i,j)*x(j));
        summation=summation+TermsU(i);
    end
    x(i)=(y(i)-summation)/U(i,i);
    
end

end

