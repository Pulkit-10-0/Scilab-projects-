clc;
clear;
disp("Pulkit Kapur");

x = linspace(-10, 10, 1000);
mu1 = 0; sigma1 = 1;
mu2 = 0; sigma2 = 2;
mu3 = 3; sigma3 = 1;
mu4 = -2; sigma4 = 1.5;
mu5 = 0; sigma5 = 1;

alpha = 3;
k = 2;
theta = 1.5;


normal_pdf = (1/(sigma5 * sqrt(2 * %pi))) * exp(-((x - mu5).^2) / (2 * sigma5^2));


skewness_factor = erf(alpha * (x - mu5) / (sigma5 * sqrt(2)));

y1 = (1/(sigma1 * sqrt(2 * %pi))) * exp(-((x - mu1).^2) / (2 * sigma1^2));
y2 = (1/(sigma2 * sqrt(2 * %pi))) * exp(-((x - mu2).^2) / (2 * sigma2^2));
y3 = (1/(sigma3 * sqrt(2 * %pi))) * exp(-((x - mu3).^2) / (2 * sigma3^2));
y4 = (1/(sigma4 * sqrt(2 * %pi))) * exp(-((x - mu4).^2) / (2 * sigma4^2));


y5 = 2 * normal_pdf .* (0.5 * (1 + skewness_factor));


y6 = (x.^(k - 1) .* exp(-x / theta)) / (theta^k * gamma(k));


subplot(3, 2, 1);
plot(x, y1, "LineWidth", 2);
xlabel("X-axis"); ylabel("Probability Density");
title("Standard Normal");
xgrid();

subplot(3, 2, 2);
plot(x, y2, "LineWidth", 2);
xlabel("X-axis"); ylabel("Probability Density");
title("Wider Curve");
xgrid();

subplot(3, 2, 3);
plot(x, y3, "LineWidth", 2);
xlabel("X-axis"); ylabel("Probability Density");
title("Shifted Right");
xgrid();

subplot(3, 2, 4);
plot(x, y4, "LineWidth", 2);
xlabel("X-axis"); ylabel("Probability Density");
title("Shifted Left and Wider");
xgrid();

subplot(3, 2, 5);
plot(x, y5, "LineWidth", 2);
xlabel("X-axis"); ylabel("Probability Density");
title("Asymmetrical Bell curve -Skewed Gaussian");
xgrid();

subplot(3, 2, 6);
plot(x, y6, "LineWidth", 2);
xlabel("X-axis"); ylabel("Probability Density");
title("Asymmetrical Bell curve - Gamma Distribution");
xgrid();
