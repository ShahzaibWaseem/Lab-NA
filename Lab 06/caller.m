initialGuess = [2, 3];   %input('Enter initial guess: ');
tolerance = 0.001;       %input('Enter Tolerance(recommended 0.001): ');

%func = @(x1, x2) [x1^2 + x2^2 - 50; x1 * x2 - 25];
func1 = @(x1, x2) [4*(x1^2) - 20*x1 + ((x2^2)/4) + 8; ((x1*(x2^2))/2) + 2*x1 - 5*x2 + 8];
[iteration, root] = NewtonRaphson_system(initialGuess, tolerance, func1);

fprintf('Root of Function:\t%f\n', root);
fprintf('Number of iterations:\t%d\n', iteration);