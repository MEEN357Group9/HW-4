function [y] = lagrangian( xdata,ydata,x )
%Lagrangian interpolation
%   Inputs:
%       xdata: A vector containing the x cordinates.
%       ydata: A vector containing the y cordinates.
%       x: The point you want to interpolate.
%     
%   Output:
%          y: The interpolated 'y' point
%
%Ussage
%   Inputs: 
%       xdata: Must be a single row numeric vector
%       ydata: Must be a single row numeric vector with the same same
%              length of xdata
%       x: Must be a single numeric point.

%checks input sizes
LX=length(xdata);
LY=length(ydata);
n=LX;
%makes sure inputs are the same size
y=zeros(1,LX);
if LX~=LY
    error('xdata and ydata need to be the same length!')
end
addition=0;
for j=1:n
    summation = 1;
    for i=1:n
        if i~=j
            %does the multiplication summation
            y(i)=((x-xdata(i))/(xdata(j)-xdata(i)));
            summation=summation*y(i);
            %test0(i,j)=y(i);
            %test1(i,j)=summation;
            
        else
        end
    end
    %does the summation 
    %test2(i,j)=summation;
    addition=addition+summation*ydata(j);
    %test3(i,j)=addition;
end
%produces 'y'
y=addition; 

end

