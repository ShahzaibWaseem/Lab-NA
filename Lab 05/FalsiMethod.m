function [num_of_iterations, roots] = FalsiMethod(upperGuess, lowerGuess, tolerance, func)
    fprintf('Falsi Method\n');
    fprintf('The Function is: %s\n', func2str(func));
    x = 0;
    prev = 0;
    roots = 0;
    num_of_iterations = 0;
    
    while (1)
        lower_ex = func(lowerGuess);
        upper_ex = func(upperGuess);
        
        x = ( (lower_ex)*(upperGuess) - (upper_ex)*(lowerGuess) )/(lower_ex - upper_ex);
        if (abs(x - prev)/x) < tolerance
            roots = x;
            break;
        elseif ( ~isequal( sign(func(lowerGuess)), sign(func(x)) ) )
            upperGuess = x;
        elseif ( ~isequal( sign(func(upperGuess)), sign(func(x)) ) )
            lowerGuess = upperGuess;
            upperGuess = x;
        end
        prev = x;
        num_of_iterations = num_of_iterations + 1;        
    end
end