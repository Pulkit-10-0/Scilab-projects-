    clc;
    disp("Pulkit Kapur")
    
    x = [0,1,2,3,4,5];
    f = [5,9,18,20,15,8];
    
    mean_final = sum((x.*f)/75);
    varience = ((sum((x.*x).*f))/sum(f))-(mean_final*mean_final);
    
    disp("Mean is");
    disp(mean_final);
    disp("Variance is");
    disp(varience);
    
    p = mean_final/5;
    n = 5;
    
    
    prob_vector = binomial(p,5)
    
    freq_vector = prob_vector * sum(f);s
    
    disp("Practical frequency");
    disp(f);
    disp("Theoretical frequency");
    disp(freq_vector);
    
    bar(x,[f',freq_vector'])
    xlabel("No. of Heads")
    ylabel("Frequency")
    title("Observed vs Theoretical frequency distribution")
    legend("Observed","Theoretical")
