clc 
disp("My name is Pulkit Kapur");

n_coin_tosses = 1000;
disp("Total tosses",n_coin_tosses);
coin_tosses = grand(1,n_coin_tosses,"uin",0,1);
cumulative_prob = zeros(1,n_coin_tosses);

num_heads = 0;
for i = 1: n_coin_tosses
    num_heads = num_heads + coin_tosses(i);
   
    cumulative_prob(i) = num_heads/i ;
end

disp("Final experiment probability:",cumulative_prob(n_coin_tosses));
disp("After 10 tosses", cumulative_prob(1,10));
disp("After 100 tosses", cumulative_prob(100));
disp("After 1000 tosses", cumulative_prob(1000));
plot(1: n_coin_tosses, cumulative_prob,"b");
xlabel("Number of tosses");
ylabel("cumulative probability of heads");
title("Convergence of cumulative probability to 0.5");
theoretical_prob = 0.5*ones(1,n_coin_tosses);
plot(1:n_coin_tosses, theoretical_prob,"r");
legend("experimental probability","Theoritical probability","Location","Best");




