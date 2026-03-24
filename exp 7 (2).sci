clc;
clear;
disp("Pulkit Kapur");



function e = exponential(l, x)
    e = l * exp(-(l * x));
endfunction

l = input("Enter lambda (rate): ");
x = linspace(0, 10, 1000);
y = exponential(l, x);

plot(x, y, "LineWidth", 2);
title("Exponential Distribution Curve ( lambda = "  + string(l) + ")");
xlabel("Value of X");
ylabel("Probability Density");


xgrid();
