upperGuess = input('Enter upper guess: ');
lowerGuess = input('Enter lower guess: ');
tolerance = input('Enter Tolerance(recommended 0.001): ');

func = @(x) 2^-x;

[num_of_iterations, roots] = FalsiMethod(upperGuess, lowerGuess, tolerance, func);
fprintf('Root of Function %s\t: %s\n', func2str(func), roots);
fprintf('The Number of Iterations : %d\n', num_of_iterations );

fprintf('\n');
initialApproximation = input('Enter Initial Approximation (For Fixed Point Method): ');
[num_of_iterations, roots] = FixedPointMethod(initialApproximation, tolerance, func);
fprintf('Root of Function %s\t: %s\n', func2str(func), roots);
fprintf('The Number of Iterations : %d\n', num_of_iterations );