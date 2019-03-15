function [iter, roots] = NewtonRaphson_system(initialGuess, tolerance, func)
    syms x1;
    syms x2;
    newGuess = [0, 0];
    iteration = 0;
    jac = jacobian(func, [x1, x2]);
    
    while (1)
        func_solved = subs(func, [x1, x2], initialGuess);
        inv_jac = subs(inv(jac), [x1, x2], initialGuess);
        
        newGuess = transpose(initialGuess) - mtimes(inv_jac, func_solved);
        newGuess = transpose(newGuess);

        iteration = iteration + 1;
        if ((newGuess(1) - initialGuess(1)) < tolerance && (newGuess(2) - initialGuess(2)) < tolerance)
            break;
        end
        initialGuess = newGuess;
    end
    
    roots = newGuess;
    iter = iteration;
end