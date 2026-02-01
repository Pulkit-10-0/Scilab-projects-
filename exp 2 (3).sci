clc 
disp("My name is Pulkit Kapur");

n_coin_tosses = 1000;
disp("Total tosses",n_coin_tosses);
coin_tosses = grand(1,n_coin_tosses,"uin",0,1);
num_heads = sum(coin_tosses == 1);
prob_heads = (num_heads)/(n_coin_tosses);


disp("Number of heads", num_heads);
disp("Experimental probability of getting heads:",prob_heads);
disp("Theoritical probability of getting heads:", 0.5);

if abs(prob_heads - 0.5)< 0.05 
    then disp("the experimentl probability is close to theoritical probability");
end

