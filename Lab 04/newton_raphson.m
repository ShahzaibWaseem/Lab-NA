function root = newton_raphson(upperGuess, tolerance, func)
    syms x;
    der = matlabFunction(diff(func(x)));
    
    fprintf('The Function is: %s\n', func2str(func));
    fprintf('Its Derivative is: %s\n', func2str(der));
    xprev = upperGuess;
    y = 0;
    for i = 2:1000
        %xprev = i
        func_ex = func(xprev);
        der_ex = der(xprev);
        
        xnew = xprev - (func_ex / der_ex);
        y = xprev;
        xprev = xnew;
        if abs(xprev - y)< tolerance ,break,end
    end
    root = xprev;
end