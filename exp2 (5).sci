// wap to simulate rolling a dice 5000 times and calculate the probability of getting 4, compare it with the theoretical probability

clc 
disp("My name is Pulkit Kapur");
h = 0;
num = 5000;
disp("Total dice roll: ",num);
for i =1:5000
    
dice_roll = grand(1,num,"uin",1,6);

if dice_roll == 4 then 
    h = h+1;
    
end
end

disp("Number of times 4 appeared:", h);


disp("experimental probability of 4 appearing:", h/5000);

disp("theoritical probability of 4 appearing:", 1/6);

disp("Difference between theoritical probability and experimental probability:", 1/6 - (h/5000));



    
