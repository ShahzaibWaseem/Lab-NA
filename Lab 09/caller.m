% Task 1
x1 = [0.1 0.3 0.5 0.7 0.9 1.1 1.3];
y1 = [0.003 0.067 0.148 0.248 0.370 0.518 0.698];

[polynomial, root] = StirlingCentralDifference(x1, y1, 0.65);
fprintf('Polynomial: %s\n', polynomial);
fprintf('Root: %f\n', root);

% Task 2
x2 = [0.0 0.2 0.4 0.6 0.8 1.0];
y2 = [0.0 7.8 10.68 8.37 3.97 0.0];

root = NewtonForwardDifference(x2, y2, 0.25);
fprintf('Root for Newton Forward Difference : %f\n', root);

root = NewtonBackwardDifference(x2, y2, 0.90);
fprintf('Root for Newton Backward Difference : %f\n', root);