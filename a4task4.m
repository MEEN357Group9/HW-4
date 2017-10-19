clear all; clc

A = [2, -3, 1; 5, 1, 6; 4, 3, -5];
b = [1, 0, 0]'; %solves for the first column of the invers matrix

[x1, L, U] = solve_LU(A,b);

A_inv = zeros(size(A));
A_inv(:,1) = x1; %creates the first column of the inverse matrix
I = eye(size(A));


for i = 2:3
    y = forward_elim(L,I(:,i));
    x = backward_elim(U,y);
    A_inv(:,i) = x;
end

<<<<<<< HEAD
A_inv*A

x1
L
U
=======
A*A_inv
>>>>>>> eb494920796ab907fee47e2f189924287d1f8d85
