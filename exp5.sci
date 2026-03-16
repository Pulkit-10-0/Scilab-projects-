clc;
clear;

k = 0:10;
lambda_values = [2, 3, 4];

prob_matrix = zeros(length(k), length(lambda_values));

for j = 1:length(lambda_values)
    lambda = lambda_values(j);
    prob_matrix(:, j) = exp(-lambda) * (lambda.^k)' ./ factorial(k)';
end

bar(k, prob_matrix);
xlabel("Number of Occurrences (k)");
ylabel("Probability");
title("Comparison of Poisson Distributions");
legend("lam = 2", "lam = 3", "lam = 4");
xgrid();
