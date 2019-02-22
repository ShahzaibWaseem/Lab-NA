upperGuess = input('Enter upper guess: ');
lowerGuess = input('Enter lower guess: ');
tolerance = input('Enter Tolerance(recommended 0.001): ');

func = @(x) x - 2*(sin(x^2));

[num_of_iterations, roots] = FalsiMethod(upperGuess, lowerGuess, tolerance, func);
fprintf('Root of Function %s\t: %s\n', func2str(func), roots);
fprintf('The Number of Iterations : %d\n', num_of_iterations );

fprintf('\n');
