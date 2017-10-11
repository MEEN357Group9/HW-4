%Preparing to sub into backward elim
%I am showing how this works 
clear ALL
close ALL
clc
A=[2,-3,1;5,1,6;4,3,-5];
y=randi(10,3);
%code starts here
[ L,U] = crout_LU( A );
[n]=size(A);
n=n(1);
x=zeros(n,1);
summation=0;
for i=n:-1:1
    j=i+1;
    if j>n;
        x(i)=y(i)/U(i,i);
    else
        for j=1:i-1
    TermsU(i)=(U(i,j)*x(j));
    summation=summation+TermsU(i);
        end
    x(i)=(y(i)-sum(U(i,j)*x(j)))/U(i,i);
    end
end
%code ends here.
X=table(x,'Rownames',{'X1' 'X2' 'X3'});
disp(X);
