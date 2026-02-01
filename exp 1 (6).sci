clc
disp("My name is: Pulkit Kapur");
A = [2,3,5; 3,4,6;7,8,9];
B = [1,5,6; -1,2,5;3,6,7];
disp("the matrix A is:");
disp(A);

C = 2*A;
disp("The matrix c:", C);
disp("The matrix A*B is:", A*B);
disp("The transpose of matrix A is:", A');
disp("The determinant of matrix A is:", det(A));
disp("The Inverse of matrix A is:", inv(A));

disp("The adjoint of A is:", det(A)*inv(A));

disp("The  of matrix A is:", inv(A));

D = [1,2,3,4,5,6,7];
disp("Mean of D  is: ", mean(D));
disp("Median of D  is: ", median(D));

disp("Standard Deviation of D  is: ", stdev(D));
disp("The sum of D is:", sum(D));
disp("The max of D is:", max(D));
