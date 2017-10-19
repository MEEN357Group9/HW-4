%Preparing to sub into backward elim
%I am showing how this works 
% clear ALL
% close ALL
% clc
A=[2,-3,1;5,1,6;4,3,-5];
b=[1;0;0];

%code starts here
[x,L,U] = solve_LU( A,b );
%code below here
X=table(x,'Rownames',{'X1' 'X2' 'X3'});
disp(X);


