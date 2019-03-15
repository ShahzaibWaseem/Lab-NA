% Task 1
x1 = [1 3 4 6];
y1 = [-3 0 30 132];

[polynomial, root] = LagrangePolynomial(x1, y1, 3);
fprintf('Polynomial : %s\n', polynomial);

% Task 2
x = [1 2 5];
y = [1 4 10];

[polynomial, root] = LagrangePolynomial(x, y, 3);
fprintf('Polynomial : %s\n', polynomial);
fprintf('Root: %.3f\n', root);