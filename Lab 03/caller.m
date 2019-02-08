upper = input('Enter upper guess: ');
lower = input('Enter lower guess: ');
tolerance = input('Enter Tolerance(recommended 0.001): ');

func1 = @(x) x^3 + 4*x^2 - 10;
func2 = @(x) x^3 + x - 4;

root1 = BisectionMethod(upper, lower, tolerance, func1);
fprintf('\n')
root2 = BisectionMethod(upper, lower, tolerance, func2);

fprintf('\n\n')
fprintf('Root of Function %s\t: %s\n', func2str(func1), root1);
fprintf('Root of Function %s\t\t: %s\n', func2str(func2), root2);