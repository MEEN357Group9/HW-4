%% A4TASK5  Linear Least Square Regression
%
% Assignment 4, Task 5
% Group G: Kelsey Banasik and Zarah Navarro
%

clc;
%clear all;
close all;

% Linear Regression Model:  y_i = a_0 + a_1*x_i

xdata = [5,8,31,40,51,63,78]';
ydata = [57,43,37,30,23,18,5]';

try
    k = 1;
    while xdata(k) == 1
        k = k + 1;
    end
catch
    n = k-1;
end

sum_1 = 0;
second_a = 0;
second_b = 0;
sum_3 = 0;
for i = 1:n
    first_set = xdata(i)*ydata(i);
    sum_1 = sum_1 + first_set;
    
    second_a = second_a + xdata(i);
    second_b = second_b + ydata(i);
    
    third = (xdata(i))^2;
    sum_3 = sum_3 + third;
    
end

equ_1 = n*sum_1;
equ_2 = second_a*second_b;
equ_3 = n*sum_3;
equ_4 = second_a^2;

a_1 = (equ_1 - equ_2) / (equ_3 - equ_4);
    