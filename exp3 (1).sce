clc;
n=input("enter the number of trials:");
p=input("enter the chance success of each case:"); 
X=0:n;
prob_vector=binomial(p,n);
bar(X,prob_vector);
disp(X);
disp(prob_vector);
// P(X = 4)
disp("P(X-4):",prob_vector(1,5))
// P(X > 5)
sum = 0
for i = 6:n
    sum=prob_vector(1,1) 
    end
disp( "P(X<5):" ,sum);
//P(X = 7)
disp( "P(X = 7):",prob_vector(1,8));
 plot(X,prob_vector);
