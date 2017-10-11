function [ x ] = backward_elim( U,y )
%Backwards sub3
[n]=size(U);
[N]=size(y);
if n(1)~=n(2);
    error('The U matrix is not a square matrix.')
elseif n(1)~=N(1)
    error('Matrix y does not have enought columns.')
end
for I=1:n
    if U(I,I)==0
        error('There is a zero in the dagonial of the U matrix.')
    end
end
n=n(1);
x=zeros(n,1);
summation=0;
for i=n:-1:1
    j=i+1;
    if j>n
        x(i)=y(i)/U(i,i);
    else
        for j=1:i-1
    TermsU(i)=(U(i,j)*x(j));
    summation=summation+TermsU(i);
        end
    x(i)=(y(i)-sum(U(i,j)*x(j)))/U(i,i);
    end
end

end

