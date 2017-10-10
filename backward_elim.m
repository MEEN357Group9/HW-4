function [ x ] = backward_elim( U,y )
%Backwards sub
[ L,U] = crout_LU( A );
[n]=size(A);
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

