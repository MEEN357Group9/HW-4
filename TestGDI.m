%Preparing to sub into backward elim
A=[2,-3,1;5,1,6;4,3,-5];
y=randi(10,3);
%code starts here
[ L,U] = crout_LU( A );
x=zeros(n^2);
[n]=size(A);
n=n(1);
for i=n:-1:1
    j=i+1;
    TermsU(i)=(U(i,j)*x(j));
    
    
end
