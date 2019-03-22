% Task 1
x1 = [-0.1 0.0 0.2 0.3];
y1 = [5.3 2.0 3.19 1.0];

[P1, P2, P3] = NewtonDividedDifference(x1, y1);
fprintf('Degree 1\nPolynomial: %s\nRoot: %.3f\n\n',func2str(P1), feval(P1,0.1));
fprintf('Degree 2\nPolynomial: %s\nRoot: %.3f\n\n',func2str(P2), feval(P2,0.1));
fprintf('Degree 3\nPolynomial: %s\nRoot: %.3f\n\n',func2str(P3), feval(P3,0.1));

% Task 2
x2 = [0.1 0.3 0.5 0.7 0.9 1.1 1.3];
y2 = [0.003 0.067 0.148 0.248 0.370 0.518 0.698];
xi = 0.213;
[Coefficients, Value] = Task2(x2, y2, xi);
fprintf('Coefficients of the Polynomial: ');
disp(Coefficients)
fprintf('Value: %.3f\n', Value);