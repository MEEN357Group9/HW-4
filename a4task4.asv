A = [2, -3, 1; 5, 1, 6; 4, 3, -5];
b = [1, 0, 0]'; %solves for the first column of the invers matrix

[x1, L, U] = solve_LU(A,b);

A_inv = zeros(size(A));
A_inv(:,1) = x1;
I = eye(size(A));


for i = 2:3
    y = forward_elim(L,I(:,i));
    x = backward_elim(U,y);
    A_inv(:,i) = x;
end

A*A_inv
disp(A_inv)
