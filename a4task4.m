clear ALL; clc

A = [2, -3, 1; 5, 1, 6; 4, 3, -5];
b = [1, 0, 0]'; 

[x1, L, U] = solve_LU(A,b); %solves for the first column of the inverse matrix

A_inv = zeros(size(A)); %creates a matrix of zeros to sub in the needed values
A_inv(:,1) = x1; %inputs the first column of the inverse matrix
I = eye(size(A)); %creates an identity matrix of the size of the input matrix


for i = 2:3 %iterates for columns 2 and 3
    y = forward_elim(L,I(:,i)); %takes the forward elimination to get y
    x = backward_elim(U,y); %finds x using backwards elimination 
    A_inv(:,i) = x; %plugs in x values to the inverse matrix
end

A_Inverse=fix(A_inv*A); %fix makes the numbers look nice
disp(A_Inverse)

