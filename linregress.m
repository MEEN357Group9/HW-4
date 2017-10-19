function [ y ] = linregress( xdata, ydata, x )
%% LINREGRESS(xdata,ydata,x)   Linear Least Squares Regression function that 
%                              minimizes the sum of the nth squared errors
%  INPUT ARGUMENT
%  xdata:            x values from data points
%  ydata:            y values from data points
%  x:                initial test x value
%
%  RETURN ARGUMENT
%  y:                y value from the corresponding inputed x value along
%                    linear least squares regression
%
% Assignment 4, Task 5
% Group 9: Kelsey Banasik, Zarah Navarro, Harland Ashby, Sonia Sanchez
%

%% Determines the sigma values in a_0 and a_1 parameter equations

% Determines the number of elements in the data for iteration purposes
n = length(xdata);

% Initial assigment of variables
sum_1 = 0;
second_a = 0;
second_b = 0;
sum_3 = 0;

% Summation for loop
for i = 1:n
    % Top left sigma value
    first_set = xdata(i)*ydata(i);
    sum_1 = sum_1 + first_set;
    
    % Top right sigma values
    second_a = second_a + xdata(i);
    second_b = second_b + ydata(i);
    
    % Bottom right sigma value
    third = (xdata(i))^2;
    sum_3 = sum_3 + third;
    
end

% Portions of a_1 parameter equation
equ_1 = n*sum_1;                 % Top left portion
equ_2 = second_a*second_b;       % Top right portion
equ_3 = n*sum_3;                 % Bottom left portion
equ_4 = second_a^2;              % Bottom right portion

%% Determines the parameters
a_1 = (equ_1 - equ_2) / (equ_3 - equ_4);
a_0 = (second_b / n) - (a_1*(second_a / n));

%% Linear Regression Model
y = a_0 + a_1*x;

end