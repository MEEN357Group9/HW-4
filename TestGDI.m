%Preparing to sub into backward elim
%I am showing how this works 
clear ALL
close ALL
clc
A=[2,-3,1;5,1,6;4,3,-5];
b=[0;1;0];
[ L,U] = crout_LU( A );
[y ] = forward_elim( L,b );
%code starts here
[ x ] = backward_elim( U,y )
%code below here
X=table(x,'Rownames',{'X1' 'X2' 'X3'});
disp(X);
