clc;
clear;

disp("Pulkit Kapur");


x = [0,1,2,3,4,5];
f = [5,9,18,20,15,8];


N = sum(f);
lambda = sum(x .* f) / N;

disp("Lambda (Mean) is:");
disp(lambda);
prob_vector = exp(-lambda) * (lambda.^x) ./ factorial(x);
expected_freq = prob_vector * N;

disp("Observed Frequency:");
disp(f);

disp("Expected (Poisson) Frequency:");
disp(expected_freq);


bar(x, [f', expected_freq']);
xlabel("Number of occurrences (x)");
ylabel("Frequency");
title("Observed vs Poisson Fitted Distribution");
legend("Observed", "Expected");
xgrid();
