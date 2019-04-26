func = [25 -120 90 2 0.2];
range = [0, 2];
approx = TrapezoidalRule(func, range);

fprintf('Using Trapezoidal Rule\n\n');
fprintf('n\t\tApproximation\n\n');

for j = 1:7,
    fprintf('%d\t\t%1.10f\n', 2^j, approx(j));
end