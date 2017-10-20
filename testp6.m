clc;
clear;
close;
xdata=1:1:5;
ydata=1:2:10;
x=2.1;
%code starts here.
LX=length(xdata);
LY=length(ydata);
n=LX;
y=zeros(1,LX);
if LX~=LY
    error('xdata and ydata need to be the same length!')
end
addition=0;
for j=1:n
    summation = 1;
    for i=1:n
        if i~=j
            y(i)=((x-xdata(i))/(xdata(j)-xdata(i)));
            summation=summation*y(i);
            %test0(i,j)=y(i);
            %test1(i,j)=summation;
            
        else
        end
    end
    %test2(i,j)=summation;
    addition=addition+summation*ydata(j);
    %test3(i,j)=addition;
end
y=addition
%lagrangian
%This function takes in a set of data represented by xdata and ydata and
%give the approximate value of y at a given x
%
%Inputs
%   xdata       The xvalues where the measurements were taken
%   ydata       The values of f(x)
%   x           The location(s) that is wanted to estimate y
%
%Outputs
%   y           The value f(x) estimated from the regression

%Error Checking
if ( length(xdata) ~= length(ydata))
    error('Vector sizes must match.');
elseif(~isnumeric(xdata) || ~isnumeric(ydata))
    error('Vectors must be numerical.');
elseif(~isnumeric(x))
    error('X value must be numeric.');
end

nn = length(xdata);
%Sum must be 0 not 1 because of addition
sum = 0;

%Compute the sum and the products
for i = 1:nn
    %Product must be 1 not 0 because of multiplication
    product = 1;
    for j = 1:nn
        if (j ~= i)
            product = product .* (x-xdata(j))./(xdata(i)-xdata(j));
        end
    end
    sum = sum + product*ydata(i);
end
%Find the y value at the given value(s) of x
y2 = sum
            
