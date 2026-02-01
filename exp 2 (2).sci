clc 
disp("My name is Pulkit Kapur");

n_coin_tosses = 20;
disp("Total tosses",n_coin_tosses);
coin_tosses = grand(1,n_coin_tosses,"uin",0,1);
num_heads = sum(coin_tosses == 1);
num_tails = sum(coin_tosses == 0);
disp("Number of heads", num_heads);
disp("Number of tails", num_tails);
disp("coin toss outcome ( 0 = tails, 1 = heads)");
disp(coin_tosses);
