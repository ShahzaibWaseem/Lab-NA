% Task 1
h = 0.1;
t = 0 : h : 3;
y0 = 1;

y_final = EulerMethod(y0, h, t);
fprintf('Task 1\nThe Eulers Method gives us:\t%f\n', y_final);

% Task 2
h = 0.5;
k = 0.06;
y0 = 3;

time = Task2(y0, h, k);
fprintf('Task 2\nThe Time Taken is:\t\t\t%f\n', time);