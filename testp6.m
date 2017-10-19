clc;
clear;
close;
xdata=1:1:10;
ydata=1:1:10;
x=5;
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
    summation = 0;
    for i=1:n
        if i~=j
            y(i)=((x-xdata(i))/(xdata(j)-xdata(i)))*ydata(j);
            %needs to fix this
%             summation=summation+y(i);
%         else
%         end
%     end
%     addition=addition+summation;
% end
% addition 
            
