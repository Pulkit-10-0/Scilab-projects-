clc 
disp("My name is Pulkit Kapur");

x = [-2*%pi:0.01:2*%pi];
subplot(121);
plot(x,sin(x));
xtitle("Sine graph","x","Sinx")
subplot(122);
plot(x,cos(x));
xtitle("Cos graph","x","Cosx")
