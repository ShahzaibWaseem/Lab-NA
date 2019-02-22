function [num_of_iterations, roots] = FixedPointMethod(initialApproximation, tolerance, func)
    fprintf('Fixed Point Method\n');
    fprintf('The Function is: %s\n', func2str(func));
    
    roots = 0;
    num_of_iterations = 0;
    nextVal = feval(func, initialApproximation);
    
    while (abs(nextVal - initialApproximation) > tolerance)
        num_of_iterations = num_of_iterations + 1;
        initialApproximation = nextVal;
        nextVal = feval(func, initialApproximation);
    end
    roots = nextVal;
end