% Task 1
h = 0.1;
t = 0 : h : 3;
y0 = 1;

y_final = EulerMethod(y0, h, t);
fprintf('The Eulers Method gives us: %f\n', y_final);