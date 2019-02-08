function root = BisectionMethod(upperGuess, lowerGuess, tolerance, func)
    fprintf('Bisection Method\n');
    fprintf('Upper Guess: %f\n', upperGuess);
    fprintf('Lower Guess: %f\n', lowerGuess);
    fprintf('Tolerance: %f\n', tolerance);
    fprintf('Function: %s\n', func2str(func));
    
    if func(upperGuess) * func(lowerGuess) < 0
    
    else
        fprintf('Wrong Guess!Enter new guess\n');
        lowerGuess = input('Enter lower guess: ') ;
        upperGuess = input('Enter upper guess: ');
    end
    for i = 2:1000
        xr=(upperGuess + lowerGuess)/2;
        if func(upperGuess) * func(xr) < 0
            lowerGuess = xr;
        else
            upperGuess = xr;
        end
    
        if func(lowerGuess) * func(xr) < 0
            upperGuess = xr;
        else
            lowerGuess = xr;
        end
    
        xnew(1) = 0;
        xnew(i) = xr;
        if abs((xnew(i)-xnew(i-1))/xnew(i))< tolerance ,break,end
    end
    root = num2str(xr);
end