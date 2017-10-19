function [y] = lagrangian( xdata,ydata,x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
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
    addition=(addition+summation)*ydata(j);
    %test3(i,j)=addition;
end
y=addition; 

end

